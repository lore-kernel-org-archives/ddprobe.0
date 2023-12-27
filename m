Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3546A47761
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIIO45Jo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89964C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703699296;
	bh=4bI61A/0kDgGPYnuM9u+TckYg/jAUcUSukL0p78cNak=;
	h=To:Subject:From:Date:From;
	b=PIIO45Jo7ZonpWWCxzROUD6dd5yYZLjRWAYOSt8P5efxF2VOVxNMM+HWuQuuGhvrC
	 h/RKrzj51wGrZKejycdR4c8z4ELzjoM+jIfaoPdBPWcj2S2AjgVR1FhxTMKVYS5Q6+
	 u+tPRtciI0fbB/9Z1KoxLuoWDicaxFkam7JC4AiiWLu9yvVCf+2kNiY2trPjRzEXXj
	 6vJ1bY56MVCbpe04h0bXsHB5V58CJ9f9m1CvjpXSRBQnEqIfnMt0vLCjhFk2vXIGCg
	 xpUhwdQr1phoh0geCgCVGm9md9WCE1C9j8gNSaEIE9ouCtI6vEXrCA0soOYzp2nhe9
	 aPqCnSf1ZvjAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E9A9C46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170369929641.14904.5686870515123821071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd868713354463d05e0016ec362c895830e080a22cedfb40cbb107325f71abbd
Date: Wed, 27 Dec 2023 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703699296
