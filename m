Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F6A39BFF1
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786345834; cv=none; b=NOcXsf61tHP8P3VLBlbn+b5hltkrP2N0zizpeuthr6Oo6JYVsEOGzQccIPkoUYcqyunp0or1Xz1nsbsjmjVO2rmpxYxrjscFqD/yQxyj+Qx2mH/RW/yZ0nZmfxqXuLtIZnM5DI/UzLerYJsG3FP/p8vBc3cQeMXOu0Kg0scXOv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786345834; c=relaxed/simple;
	bh=TrOKWkNSmIm0+rL2atYCwW5PcDb8uQ9O4mxLtW44PLU=;
	h=To:Subject:From:Message-Id:Date; b=sF5xwCQ/YYJO78qb4V8w1Jl1Uw1HbzUH5IlPOufBzTh4bEtIJcfB5Sw8VrgRrspZfNOA2i2vRwEfUzulXSRtDfW2RODA2TurGrPKG2jF0wCMy9BoeCEiUSKoj3ii0t+iR76BazrDV3yDyZivEG0t26Bq7HS7GEk9hGStsUMpjJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJubEi8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJubEi8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE747C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786345833;
	bh=TrOKWkNSmIm0+rL2atYCwW5PcDb8uQ9O4mxLtW44PLU=;
	h=To:Subject:From:Date:From;
	b=jJubEi8Bi8oZHcQtLQBJ3DQrAaLhwp80TOG0F3StEwd9qOM7Hg/MP7iwUPqs3YjfL
	 NtrfByOT2X6lykTlU1HIZ1/shPRXT46nEzttmoIKYTVZqnJhc46WFwf9hMWfByO7Ii
	 MpOc31OX9Og+CvMrqUr4SgykVA+Xbf1/rKbZmaabPTKgKTdBG0aEJPYFieh5DCRJG0
	 eNwScIm9wjxA/wp+iwpX2d9ucaGNC9NiBUJFYj+HSNCkJ5xuA+gDTApCuW5Z2N0VKR
	 q6ykn9VA2nPTcZ9kRggPfykHcSTPFssBCoZZCZFqqBejdsd572WLE7aE7w0tK+YQBD
	 NpSPA1gvOGKSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6BFC5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634583369.27751.9858279854648129469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac3f5ff55eb55f5e3ead883f50b6b099f849f52d18bfcbe176e9bd073c83603
Date: Mon, 10 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786345833
