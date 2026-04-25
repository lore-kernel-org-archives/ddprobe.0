Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C5040DFB9
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777147054; cv=none; b=e6q1dNi+W9EIVHbTdSoD2X+UkIWf6m4l67ux3LGjaCI78gnwwr5aUZoYsq6+7tItdnhziCmkuEZt09ruFqdWUuVCz2axl/EGttf7SBH3H4bnB+sEu9nwY80Z3ioIwh2r4+CFzQ2gNPIX6xK77AbpB6ZyrOxF4FsNuixEW85l3Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777147054; c=relaxed/simple;
	bh=62ZOqgbCulF2Ersu6Kj874sEvwemOLEJRVjgrp1SH/M=;
	h=To:Subject:From:Message-Id:Date; b=ZnIpG4oZ/4Chbbugh7PHOMUxrIgbGmbEirrbBU4mxAdqOj0WRSGYnfK9i7Egf//H3/hsUV2nu0J+LpL5opT7T0WGaEJJCzk7DpATlSZskuPn0JpetLPaNS8ckjJIwfwDQp4M13eSwWco3UzhIVQ4l90yaIaLuJoj2UUNXRhBwr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXzxiqdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXzxiqdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8E6C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777147053;
	bh=62ZOqgbCulF2Ersu6Kj874sEvwemOLEJRVjgrp1SH/M=;
	h=To:Subject:From:Date:From;
	b=BXzxiqdGtYhlI8Z8KTWsJQiONi3ixNXTnqGCbOsnGoDZ2B1fe1n62lzjFJPmTnGGT
	 edrCXUWpEmxFoOzoqTOfGGLEGGxO9rJkuDQOHzyIiJJxeI/T9fvOSF4V3Q+nA0YFCO
	 rVee9sVrC90DT9czubuIPsS1HcVc2Tp47Ue2hq+Jul+pkF0pI4U8+oPTUSw2s9xpTZ
	 G40VM8qTWzDTIZvs7DCshRyaJrxyFQM7sW+Ti1dWTHkZTjepSsnBqlOZ1r3vAo58v9
	 BcqZYx6KNF+hNkFBHTQroZ+bq2yy0VBchYNPbhepKKI/oqVlCwfijEMu/GVvXK6LQg
	 rhOBCAPE7NkVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4F0FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714705368.11787.14376850406503830412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d77419d2b5f5441b093294a044a324ee56436d016ac147f1eabf200148f65af
Date: Sat, 25 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777147053
