Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B6E7F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66ECFC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665940253;
	bh=vk8wdqDAKcpwPvEzsOvs6EqBQO81YmKMI8Imp7y1UzE=;
	h=To:Subject:From:Date:From;
	b=diR3eLqAJ2D9Rb5hm0ZpR6TzjeV6RnPLofe3IpQTwy62+MEfUv/3zgkOdhdPECVB/
	 WaNcTp3y7qbzltH8prjWTYfXFE/sjc8QqlZ6Yj5dCJ9laJVR7JHouVUgTGvcQqMp/+
	 EiauntgJA/hfjzF1kwFYty4Qcu6QmukS0GVNCosUD8N2tQ7lLrWION56VvGXAcBHUC
	 IB4gywKRvJZkKYlVKA61fqTq4R+fb73vxm5Paz/MmIMFx15XgBgKXW6FD6jeMMeZEd
	 0WKvFCTCXwljKh2M3UbPw6+McwvoFdeYi5kGwRSEgKExgc3pCBP4pN8kvCdFpxs3FF
	 1X4HC2t+AY1YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50196C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166594025331.25871.693336540418883796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b8e5b2e15c1969ab81a99cf50682a36dcc2b52326986b33cb222466559d89b
Date: Sun, 16 Oct 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665940253
