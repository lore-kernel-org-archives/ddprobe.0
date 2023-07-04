Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7150F398
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 04:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28CFC433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 04:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688445368;
	bh=lSWqS9O2LLeF4n/uadzPw2fqlIt3/goVXhvwDNRFarw=;
	h=To:Subject:From:Date:From;
	b=X8GxEiaYJD7CPjdI9UTBGb8iHtnIFqcf91p0X77y4CX7kmIRLcLLgi4JfE0C2Pifz
	 AxZC/OOZUy441/wfcXyMiQ0geCTWDG3LZjp/zzzmBdmBPNaX8H+p+1U7C/srJzWoI6
	 /sFXwsOq8uoq5YnR5YE0lc7iZMDHeWgojAQ1KQ9q1aIAUbQ8Ldu9lqYxVC3jH0zDno
	 Njl1NcwT8IOsTlc+6Vzhf27NvnUON3er6vcaI6vRDrZ4uRcKtH1wJ9on1SsZOmTBlH
	 nDyyA2Em6/DVO643VIU23v1eI3GhDcTGO2wZfhIM482SVjmhdwGriMVo4SGRm1FNeM
	 /eCKvSNlh9/FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B699AEB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 04:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168844536874.19428.14054009445843903258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc2865c234a31d76aafb66264cbcc03b6f7d7de925defee4ff113436c27ac77
Date: Tue, 04 Jul 2023 04:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688445368
