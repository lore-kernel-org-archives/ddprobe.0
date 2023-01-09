Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0046163
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B089C433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673289687;
	bh=gdrwGBR3lcF3hon94lLQ1dyf5CtyOR8g0HMgJ2BgYzI=;
	h=To:Subject:From:Date:From;
	b=f1XXeOdtuJhu/H7g1Gj1b9XjAovf6eseqzwVOaO3U5ytjxxdiWkMdmzCJKRrIEzsT
	 kmDIu7g/ftX3q2mDu1phKxoxjk48l/2osb8iuHJh+3vqrf7S3FaAHk7V97SBQQVRbv
	 N8B2XexpbZ/9SZ4T7Qz+Wf2i3yOnFf16keqIogmGiuc41m8D1jn2kQuWlPUHejcRCW
	 7eVR/ybIOYB5dsXlw9efmKKsz79QQoG84YkrmLmBIrdBAApH/Ame/6yFsEd9ubdeLK
	 X4fA7TSlPmuod1s52vunpEZC2Qm7RC5izLojJDLenTKOifIKCg7TvHuB3dsOEuIRJ0
	 0CHnkQtIep1HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA1CC5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167328968740.29007.7879839404690388036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3646f03359cdf28959604f7478ed789e2794607282cd56ff00a07756ab0a1b7
Date: Mon, 09 Jan 2023 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673289687
