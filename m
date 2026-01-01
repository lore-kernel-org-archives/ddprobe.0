Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F202145FE0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767283434; cv=none; b=ljV1VjgcKC+pl3dWq2n0m41LKFs2WNnb2Y85Xk6zlkceQrUmntnK6RF/pOXY3ji/cDIhKhDX7SK92y8QoYkpAj2BKh+Xm0DOB3O5dIIu8cOvMpH8iOLQKspN5BfscwI0kPmb59PRpX0vsm/BWQb9nh90x4t1emNFCMhXU2mHMZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767283434; c=relaxed/simple;
	bh=2xO80/tj+kTQd1pRND5CmWv4fv14L254dF9b+I/9CEw=;
	h=To:Subject:From:Message-Id:Date; b=NUhuFt3w7fVrRwl59XxouYbzUgdf1tcrDdroCb71UmoX3n75gj/S0tfbaOK9yEiVUdE7/6WKLcd7XS5CUoCR1UXDy12bmcNQsgWH96y668JnQuP87LDd2hBdZ0+fqARDqFTaJIMhzS2wO+Nwm4c+/EqJHr1S3v2LNIuN+sgIBlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+V2/Zxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+V2/Zxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0289C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767283433;
	bh=2xO80/tj+kTQd1pRND5CmWv4fv14L254dF9b+I/9CEw=;
	h=To:Subject:From:Date:From;
	b=i+V2/ZxsR25kEcDp/+3T4uhhRB9ajAlPNeJNCxsROrnA5TAwasNJOmjKXXDdeLWeU
	 Ow+kQw+8Id1r32l7JPng4Gm9xGBFDTIHfCRwbVqavSyT7LatGkZiG3+xMB8f+KLfX/
	 MAJPcOju4P2uGCPxC5pm3QiiSx4OHofocf/JYTA/cNh8WyKmcSVLXIxkRdNuY1IsOJ
	 xP0jj2FGu1uI+4umT8vlKQ6abN+WPByhg5YhsSjBrU23Pd7ve0HPB0D68nq54VgNpM
	 KxTpfcH/vsMUR3DgJT2Vlgw2e6uxabbbi34JofTRNm2140YEkCTG1Jte6W/C0EKaME
	 gLCVQpgqcvANg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F172EED60F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728343357.16139.18107051578140553535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e496100e07637bca3443be0989182c7bf4db8fceb4ba246b34330c6c6eadf062
Date: Thu, 01 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767283433
