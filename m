Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339AA2749EA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768017834; cv=none; b=HbYHsXGRRSNa4ZX+B9AkMkTYjseUWml9eYtNy9KW9fPXwfOBYqLtpVnnkL+9xeJvBwOcakD4a3ay1LrcfJB/945IiUDqIjgZ/E6rHrhBwEaJb1zF4AIgNVZd1cRxPVgZb4u+Cm8wOQzhFgrLdSqeGQjj6c8d/LxUecHGWmaFVAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768017834; c=relaxed/simple;
	bh=CTY2yYKHV1H47xdqRsQIiqaFj/B5u1I9jpj5vrcu0f8=;
	h=To:Subject:From:Message-Id:Date; b=bMAP/Gsaihn8c+vcnFR9bZO0Bn4054dBaJDcCoRQ+R0of/G+xhS9TSPejEh+WTrDKw4wW/vVIvrfMT8OP4Vdc5A4/9Gz/vdocXGT7k3gop1czSINZUNbWBTRbPjqFlQZEsqO3aP3Iyrmw3VGmnBqDtZgpLEnBcd80IKP2UjkLHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPeVKClG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPeVKClG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A502AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768017833;
	bh=CTY2yYKHV1H47xdqRsQIiqaFj/B5u1I9jpj5vrcu0f8=;
	h=To:Subject:From:Date:From;
	b=LPeVKClGm8ATQHSQCArNjlVqGmWHK9FGPPr4H92MDNMMSXgfBqOl9bAK9H0m6Ledl
	 cKzDkGGdkOyiaw7IkIqL0wvEGe6W2i9efqaFK52cLLRFmKtS+le1fo1HxCxbmqqh56
	 iZNqIcb//0wGLGDyhj6mpB6XkW1henADv5hzCLKYOUEdECWLLTC9xOwp6Oa1HjhLtB
	 N/aRc5H0xzhR6k8ZUmTAzDNW0MvrRvbkw2g6630sANOUwVQns9FWfBhsOFq9ef9CoZ
	 vYZqDqICwx15V5Ou/p87ns4f65gtBq5LARrt3lwlm2DnjzPZ2RaD2Z9onzpLuYn5fr
	 1q5qvNFWaXkcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9391FD277D0
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801783358.9036.2997418015134426424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceda5674d59553620c7dcccb78c662639c245da10c4be412f7741adc06098345
Date: Sat, 10 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768017833
