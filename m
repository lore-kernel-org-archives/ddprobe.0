Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7DE40BF4
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNKnqsXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72E8CC433C8
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701962896;
	bh=Wbm5EZ7+RKGQPZkgn9WiXoyLHDfb45eyc0zvt6bq+S0=;
	h=To:Subject:From:Date:From;
	b=UNKnqsXGZGS0RuBlQGGs15fuavGdvxlu3yhsDAf0OjS7yVBnUeLMw4OzYUdKnPfVB
	 GFgCBzbSVAQM8vS2Op0VrguMqT3diFyG1EolcV5qm1NBFoWp4wiRaNDQHxw1PmJkkz
	 QL2C1uxfIKhqvxX+JqL5bpBqoTqEIlAzvOsSFxEwQC7WTIRDjtEz5vGppLsO1/cSuz
	 Qop6RIQLMyyJz2ynM95vDnC7EyNqcWNN6kmsb2aRY8MiZwm4hLxTsPomDqEnrh5Ao2
	 6FNhgjEKM/9l97ZVmpgjo/WjRGSPGJlOvxlidbH8D/hrf7P47OWHXqJKj8uOoEgbsR
	 hO/oMVu3k4H8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C397C4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170196289637.15041.5585268499552741455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a80cf1f3884c0385bcf40adf3284aa4c352c88ebda700f222a9ead9217eec43a
Date: Thu, 07 Dec 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701962896
