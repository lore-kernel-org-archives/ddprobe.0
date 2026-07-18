Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467B02931C6
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784411914; cv=none; b=JjTuqIxwh4Ai9RbHfJFr54vw9ZZlV01dambcM2voyw2jEl5obDCO1yluxAwxH0z/gyq7ml9ETAdgIoD088V5aDvCoJYOjrshmr28bFPxy8o7yg/psZ8O4416Lwtdxwv877TBmlRcY/wVIOvnsermTx76IhjbWjERuJ2moatWe7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784411914; c=relaxed/simple;
	bh=Ht31Jd+SEPSu0/TLB1YS4Iy7Bs/aDdYkKo3G5U5vmV8=;
	h=To:Subject:From:Message-Id:Date; b=gjnQ6DH2AN7YMsoy3Gik8JKlC2OmTumOd4eu/+WoZELVkU9FTP8m2vN2qGzv0uFd7Kw52PkJUyYYLOBUYjejkHN0x+j7uoYr0h6dvriTmB6VQxuJelnXhHj3W8+62jgxMC+G8XUfbGxj2y8AXIIedbCYuqOXBRGynI/LL1wnThY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3IdP6On; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3IdP6On"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1E0C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784411913;
	bh=Ht31Jd+SEPSu0/TLB1YS4Iy7Bs/aDdYkKo3G5U5vmV8=;
	h=To:Subject:From:Date:From;
	b=P3IdP6OnlsZuef3CHz+qtBD9+R2SAEoRs8IzhqY8bkuIcjExLNEJasTWHHNId6nZX
	 X8dA0PPTSkP5JuE9e0g5ctxekKyY8+i3OwXE8wb4IIXCgZEYIzop9zSm5/HnVyT/QM
	 8/J4SBagPDSKT97DtSCKyVgDUV5kWlFwAzsFajTY4F2hujJtRiWY9perX4L55uggwI
	 sVQkhye3uZZDcWMNLxWGdzGqmJcPZ106E7ba4WNazwGCQ85Zy0RHDMzo9Godt68M7v
	 8pK78bDGg1gqheiCxEdmXUBm3O4EO1/sfRdjP3K20w9nXdly6Myekki7Qr9gaegFOV
	 58GbgGaYXud+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B12C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441191368.20706.15815980972149487995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4bf6cfac95614c676c37c1ab024979002c3e5e464712162609c6ec49d508118
Date: Sat, 18 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784411913
