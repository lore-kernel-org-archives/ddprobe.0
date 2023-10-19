Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCAE19440
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfmzOwlm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDAEC433C7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697759296;
	bh=ZXt0jMRI8MwafAZXpM0YEr420UhjjTXSe0BXaTByBVQ=;
	h=To:Subject:From:Date:From;
	b=rfmzOwlmbgiJeWX7zhPZB/JG8AliAd6TAXPMIiSX0LFLOaX+0vW83QV1tH8aaYs3z
	 5X8/200kN4ZVeeVwRWMJLH1+93+mLdtMXYYFydBHitj1mbgelhE0rn9UZO2QsfjMXH
	 BXc2vXsDI3YSRsLZaEqtM/yRgPBpFozuwLyfhK3jYb6Lb7fyWxJPja+FbFIBBDKtMH
	 r15zJG9+eP7+CG0v8cAbiaUnvxB08Wx0O/Bmr4sW6I/PhWbbJrUG1lFbXI8UnB44LH
	 7LxMEmRakis6Ijdi/nerRZnwqSuppcjlLpCqhsdMoT/I9aJAtrFzNw2+j+Oz7NXrd4
	 AMBRUEOUnqC3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7ABBCC004C0
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169775929648.14160.11176160401004412576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b63a7506eac8ffaab6b347508036900e0bbeae02c4432dbb0bdd271d35b09bc
Date: Thu, 19 Oct 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697759296
