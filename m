Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443C8A31
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 21:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0083AC433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 21:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675458366;
	bh=WujqGJpkcgDYZJv7TL9xX06i8xTE/4hCiEem0C1Wqk0=;
	h=To:Subject:From:Date:From;
	b=F3jUVEAcCMmlPvhzyswvPSSjzQqvtWVsIJbOr1RFwLLWxs8NVdfU0o59pN9hmFdGH
	 xYypd2R19eXj50Yl0RKZN+OQhZBD3qhjulHG53OsYssRIygbai7QAyCBFWY2OAPWSd
	 tGjvgNOSLpT2YPQM24q8H5WvcpxsQ0oCdvNsoIvXJgpZwYzacUMSZoVKDWyImc4Eui
	 uuqrz4nxJbKNcnaWM7BaE+wqcp5+wWrw1ZmUQ48JGqjtJHZj5k9qIf7/m020RHydm4
	 nquKhlRCHosunoXzuHTYPYhrNvm63no/0AWwMv3cd0CvHmmZ21H/ri95KfFfKiHWT1
	 R60B5s66TuBXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D135EC05027
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 21:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167545836584.12592.8906757437330328936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deebcedb150e2dbaf5589c9a3a7c409e719ebd6e378b9a2df6e410aba91ecbae
Date: Fri, 03 Feb 2023 21:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675458365
