Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6CC6244679
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763054393; cv=none; b=AqULrDGUObwQY6pNbUxkCl9n/SEGEY8MfA5zohfjjMrF06whXQkz6znqbXSeH+tBgTbzKZ3K0mRKqozVRLp9GcxhT+EfLGmzjwNyY4OeA+4ax2zQjcWEk9BpXRN+RdMsyxIMpgd6Q3fO5bG4f87TcalLf7Fxi+EivE6CfpoV/as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763054393; c=relaxed/simple;
	bh=Pged5dFX2f4H8ah3MDQgImeOQvrxttwqyYNLy4gV4Qk=;
	h=To:Subject:From:Message-Id:Date; b=tZwgtmafnHQKJBW2RULSI1wh7kfxe8eZHLQropDQO0r2pXKyZmJhi/ZQyhc992E703AhJfmcWGFFpruVKaEXbaDX2YprSVe/4GT+DsHr00ggscL9tOV76ygETTjBkG3FoCIggD+glfojaM7jwo+og04Sb2Fm3zPeQ1HZJQ+I0Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zi1qfeMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zi1qfeMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64F8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763054393;
	bh=Pged5dFX2f4H8ah3MDQgImeOQvrxttwqyYNLy4gV4Qk=;
	h=To:Subject:From:Date:From;
	b=Zi1qfeMnYrR5lgOGpNGEKb1Ozd7XI3xt46G4dPDDXyCQejbJOJvU+586badOGQlSV
	 IOj3cuO17DrZd4vKt1Hxu7byXQKm6WIa2CtNyzup9xTqoOIhpTOa0npUeZM03DoeS7
	 VNuam3wZPxSPGoLCK7ZJdMQTiOkHDbtSYVg20Sc0cfunmNyoeCnM1df/FV+mOdUTil
	 2VnU0P3Sf9jDZN08mVbGbEESa19SrASbFYrhg0kCtf3VRqBrTyjUc5TbDH9IZVF5iO
	 fNR62jIi6Qy3Jx6u3DLeRWp6Cb7ewUkJmMfYzIJMZqHZ7pNtJLPTJdHFO+HflRSy2l
	 dkL8AV3cADIjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9911FCD8CAD
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305439361.6986.3668723086194996550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7347c1d9346754a1f319a176bd59df1aee67519316ad801754b98d5512780eea
Date: Thu, 13 Nov 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763054393
