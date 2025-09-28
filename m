Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F01132165EA
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759038594; cv=none; b=J28MTv+0pQVNxP7x2DNO+8iYuRWlGE1jM6cO2OvUuveqSEon0pKtNNAEjeplnWPv0egRwd48Q4DERMMPX2qwdT8BBdCvWP6C/mxvBbUJnA6Hw+SYKiBHfTT3Er4wXZBRd3yVEqO8wO7UWJDrlksn/oqmEXKY0puQjoXHI1S0Nos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759038594; c=relaxed/simple;
	bh=TRk+Q20Yds46UPMUcrsBs1omy+QBDUsTyP0FoR9RJM0=;
	h=To:Subject:From:Message-Id:Date; b=Xk7RQ9yER5tbUlMoyuSkp6w/hhEcPRS/l0y7+l9RZaKPpOPnWT1XL+l1iXCV88DOJJ8efa7jV1dkgS6dNf/7a1mvhVrE8yndKnNWUh/rgMa3UJTzmqH2ZY+O8idOg7wwyGaWIFZmjlOXC2L8jcH7fHSqX+EotP+Bg8zFvqeW6g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YO1WYybi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YO1WYybi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5578C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759038593;
	bh=TRk+Q20Yds46UPMUcrsBs1omy+QBDUsTyP0FoR9RJM0=;
	h=To:Subject:From:Date:From;
	b=YO1WYybiCRP/H7J9NwcM8L43bk8PFWm8Hl8HvhSKmE83k7O2+DWbpyG8OK7+D7DGY
	 6IrZJmGFH4X75L/y27WR6U9oAozYQ/4o3FhTMb9JQOLOgaUYMnryJz23H5Ujafw9sK
	 7qCV1ETTZM6qtamOUw+pJsuONe71UqWy8frf+h9IJL+yb+liJiiQB8DTCpkDbmvYf2
	 wIW8phKw6WZsLGl8nbd1rmaKJYKiTDuLX9qmDXXaNXAXGwlTIm1+vTwKDgMxB2hG7T
	 64svQiB4XcL/Jnfx8PWmmKSH3B1tsnsILsEYFYc9DMWfbirUbNzvLtqyWhlZ2JHIPI
	 PRJ/k0mUG14/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F79CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903859359.25983.14096177718564168727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6287ffbc15d73baf8d14e51aafa352dfbcff1327ffadcad50c10508fb90789
Date: Sun, 28 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759038593
