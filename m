Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE4617F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 717CBC433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662924653;
	bh=DQx6ggy0z3ATOlfpbpwYTw81w/hfxt/tSyaUhpUaczU=;
	h=To:Subject:From:Date:From;
	b=KGvV7jmQTFd5/18f/6RpOfGVoTpPPEp0/JYLwV3tN3e5eQfnMCQXH5ZBF0RtOvx4Q
	 IBS6mL/ErV3osv/g+l7aUSuU10lHuaxmN30ColxeFpELqYeVuwWlydJ47r2yycg88a
	 Qdd95CMpkYgoWvVoKaXnqowLE8vjEzXhFxWoXcmQ6eyJ1VSOIen1F/ZyW8alHl9SO5
	 bzVKRSttF98zfGLBDaOsmzIpUZICfSbJtveT9fE1HdyMXy8j4lpl6DzPQp4YbM3mNU
	 PK8fsSdFEOC+gHAhwf00WhCckozG0sMZTrDGNKFGBhciNQJH9PV73J/6Q7qvZ/Bgmo
	 zuthPGRHezyUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54256ECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166292465331.27620.12209978680074862951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc790bdf190efe276d4027793db18ae0756738f030d8cb1eaf7b94758104944
Date: Sun, 11 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662924653
