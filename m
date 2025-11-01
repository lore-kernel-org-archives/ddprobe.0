Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B921D27E
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761964194; cv=none; b=T1NyYWJ7lL5xvD/QBZXL81WaC/GviLAoW8yT8YxovJRnDry83QEwEE8mEdV1O1OusGtNguVzTSUSx8TW/DJcnCMBL6c0vRHC3xx/j8Dj+GqxtPtDtOseoYUMk8J5YC4l0pnCQbkMpR3dKgXA+gSE8Jc+L09kSS5mth53bhOaHEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761964194; c=relaxed/simple;
	bh=i9z4aFyRcLy6HI68CZWI6sw/3YDo9ozMXtmtCmsf4HQ=;
	h=To:Subject:From:Message-Id:Date; b=eBXj3bEBBShRncBFyaeaB02WcTSGA6002Jalgs66OKmFnwOirKis1b2/VbVwY8vyMnZj30zycaoNdrKPRp3GC6OK6xVBi35sHV93WI2fLO0KvhAtmozLTJVnl2mHt/3cCsOThS6mgLX0dA2GhOFQE/KRwQl+YqVQ4r0p4dyn92Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIWFLYYR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIWFLYYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A785FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761964193;
	bh=i9z4aFyRcLy6HI68CZWI6sw/3YDo9ozMXtmtCmsf4HQ=;
	h=To:Subject:From:Date:From;
	b=gIWFLYYRSu0/I0B0vVvuxc3BSEGsC3wAo/PUol5CalQpFTyca84zietgcfG4ygnPX
	 4kwo8pQFw9Jk+1AtCp071sbiN0ats6+QxmeIQ7gRndG9TiMgMJzo6G89SORy4dbGiP
	 ffdaqM6/gNgr1wHql6TZGZQ9mo5rJAn/FL7gsfHuwh1pMwyoAIaMk6iMuADwDwKPde
	 wkJi3GowV0vTXJbrgm5/RuzOGNBRiAmbHGuDQXTdfMXSSVM1YUlZ3AAGsY7pzSSPck
	 e0QArUnhiCYGkfY/gWn6jALzoUFNfcFerYypRwMbv06HERGCmbN6qiqyEzXcYl6crB
	 aM0o2ZP/2VxWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BC3CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196419357.18490.15946332581925644050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1236a9db73005b7d04319d303e15843693008e20c32b22ce1680db257a15f18
Date: Sat, 01 Nov 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761964193
