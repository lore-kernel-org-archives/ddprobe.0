Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58562F5A
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7285CC433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668093654;
	bh=dSaD27ObzdAu29OOKtXN2P+17rpDZGqttcU8YqC0A6c=;
	h=To:Subject:From:Date:From;
	b=JqNoTcJAHw0tqw76FhRtgPULP+IYRV8d+HlygoLBivoAXDX1KaVhGAEltuSMu3ghX
	 CWRkGWD+s6ASAf8JPABIYF+PgQlxdVRmXCAjuUdLSVIYk/8B4e3mxlgQdqG6TLaOfJ
	 UfTDxfWVY9oXeRXyB5puuko0cBiiZlFA5jOg2X70iguFzjFzf5bh+WU8olP45g9YsR
	 zwfSauLp35HVXHcM777C/UP8eZJ3i9kM43jgIn8WM9HLgZ35VcToLKvK9vBdbcjz53
	 Ws2qeH8ym1dI4IBHe6tHyFNSi5bfiWJ44rQdDMSSk7iz6cE2IjhIm8SLy+pgJrJv88
	 PyWfpHBeBeGNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A0DC433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166809365433.25865.3686735208471319943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6196dcc85d9c7c06a69afb493a76a931efbbf2648cf222c5460ef3fa1ca0d445
Date: Thu, 10 Nov 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668093654
