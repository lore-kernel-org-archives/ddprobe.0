Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3057E105
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765424574; cv=none; b=UzTMesUnSnzx/ZztLNguIr7pkMoscwVmDzEHdV4ETVdFXzUiwCoMV/3RINWS+CO7wIZ3VrAc8tvT1aLvvGEtYTKcpJDjBx9OCaG8eYmNGz0O8+K5YS2Mspn/dWoPn6ZlBljhrcsh9YwGVQBVy8WlMtKpa8ypFwMp8m2hPWlKKuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765424574; c=relaxed/simple;
	bh=oZptCb3PLHkOuN4rXYq5Ukmm0tUq7w6d+Lr9ytb1zI8=;
	h=To:Subject:From:Message-Id:Date; b=n6P8IcknN0LtljArIv1yTvo+mX8lYWroRfIPsUa74pM6O6Y3TzemqBxEjHba3/3G6VPR+iHwQy3p7OG2JMlRONg5wSuKQyYGtAMUoddFTlnQMh8iX1Y6JBp6MuyPadjta2HjUWom8Gh7Hr20pYTDEPmI0Ip8Bef+P2lshWqGR1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbBR2KuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbBR2KuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCCBC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765424573;
	bh=oZptCb3PLHkOuN4rXYq5Ukmm0tUq7w6d+Lr9ytb1zI8=;
	h=To:Subject:From:Date:From;
	b=SbBR2KuYoSL5W2CkQTPTu7T49dwMTcleqtc6XROEXZhPkLCFsNshyFI0ddRb69dGf
	 sMD2Sy3aavyaBGnlVDcLiwnLip75y9NwEBsmlc2gxDqISsF3iswMT6i1HnuPFGlH95
	 yhHBdETYi2NT/C6OrJ4rKvsQZ7gONNvtYFUZtZWrwSSMbhzUqiF0oVzi0MrZSy5YWx
	 qAEjBMjIcxlpBesMSM9k9KLZiefkokVunvf+bVuRYKq4BP8rcQ5iBN0aMm0TqJ8slH
	 8RXT51wGAVA/eUz3e+DQUj/CYzks8eg+21FzyqATyBunaNP6DNEcaOzuIgNKPPUt3b
	 Cgl0W5uHErMtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18E7D3E78B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542457360.14358.2727386520029239862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe76e7b7c769e1843255491e801745edce71046eff4fd86b9e39da93baeaeb2
Date: Thu, 11 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765424573
