Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF9C10E2
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 790D5C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668292854;
	bh=NchOCfAU7LEBoGzjx3GR/wbsUNrHBZnEMLXGx1loCSc=;
	h=To:Subject:From:Date:From;
	b=WoltsNb1irdP3OsUDSUl0z4NU9WWw9jsXaIzy2eWG9nwOgro8Hjfwb6wDwGvw8AHm
	 qX2yMuedVCD5IXGsaNA1bE22M8GPhvm5Hfcy2cQPRlpqvCIHdCq13wxgp8KcuDcYFK
	 KvjcfdJbBB2L3D6mXMBsPfdavcCE4zgGcbQNpGtlnj13HQqqd6KGFDNZjduik57xvo
	 qmBmkQS598VUaTmvkc29VLOAalztORmGbm6CCj/8qMP6xBxXGIi7Q7RsCEnhy6g3hG
	 p3tAIAoxECb4PuuWaxPhjiHfMahK/cT+2j0uOcbgG2+F7wOOlP5a5IJfobadLeva1x
	 0IP8SrUecTq2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC4AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166829285434.20141.2853424625522565274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ecb34c4377099518f3cae58da4c313f578f3cbc4782844e5ea6aac2bf0196ad
Date: Sat, 12 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668292854
