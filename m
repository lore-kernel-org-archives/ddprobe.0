Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B186697A1
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3ifbo7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77081C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701776296;
	bh=HOWcPWRfi3wfanliyOAzropZmQ8/BmSUGO0n6H/BP5s=;
	h=To:Subject:From:Date:From;
	b=U3ifbo7t2NNemheVB8/S6YSBwFzn6GoTm5McCinR+V3UTBsTjxv1omhfMpfWGTQ8w
	 qO5ujZVIakb4Y16EvZYl1qmjGa+Cf86NElpvNq5bw8YZK8xLrOw370VrEBOked1uSu
	 mdKZmWHG5QpgrO34B2skrU3+uQ38SL1QzJ0qYjJDrUq6wFrR9Vm7tKvQGIGiWLsmXi
	 bcPvOf0POs3LyvtoSlVb3s7p21WxicqvfEZaEFh15i5dAgdyI1pH1b0RJ1rLRZkoT+
	 6GoLiXcm+2HFVng5xpyJwcjtLLjuhHtaTOmJaHL8bcu8ZqHeTuxjZ8ytjV/Ps3raQk
	 YDP4Lx0NAAMRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C823C4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170177629637.6670.7994947368286600103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6ff105f6ec5c2c3f98fb1a1ea95b31d5314b93419d31059089f85657a1a978c
Date: Tue, 05 Dec 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701776296
