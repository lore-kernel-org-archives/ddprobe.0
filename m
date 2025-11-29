Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E8C19CC28
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764376374; cv=none; b=APyRGihsS/IsDiO6rvrUytKWvlLke4DA6IZAaRPbjUukC8bZ0nMYnQ8ptCLwSHMfs4uyaiHi/QATmXuIN2Y2SHx09yoopyPCfYf8G5vdCPd5WOcrOp1TMTBZEmPiSzPVfOICTp8gklLyTQMPP1Zr5OPxbfcVGNJPC47VCXDgVec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764376374; c=relaxed/simple;
	bh=Ibzren2SXupYcr4DdRIEVXEpPBjoL5G+JLfbQuPms5Y=;
	h=To:Subject:From:Message-Id:Date; b=KHHFxlWXrnBJRKodvHUqE4t12bBEwwyHgVgwt7Kxm1ijiN4kCeLRSAKx1z6jKlPZJ3Hh+EAsKeNrugeVqgavZ7x5UAdT96w0cJXrbpVtWPhGdQu8hDrI+KSN2a3tbPEJ7RMLu/bW0oNpyicFocl1g+KLpSvyv0YViS2C/r2Js3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKcYJ1s5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKcYJ1s5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0264C116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764376373;
	bh=Ibzren2SXupYcr4DdRIEVXEpPBjoL5G+JLfbQuPms5Y=;
	h=To:Subject:From:Date:From;
	b=pKcYJ1s5NDxirJrdsLf7LBSQiFXecuz+ZZ7cvDzDTo6VLaOzTsXrhkwpCEf+NyLuL
	 iPZAAMp1yoQadRm0NlUmDdZAH10xgXmVoHRP9uBtPZszUvHQhD7Jxa5+B5EiMPwbyw
	 Cz61czM9gm3tmqFrKIT3kwXod1eVt3SRUrmE5ofGqndtDLoCTCg0Td2wlOiHknISmr
	 /I3Q6zlCMKEBw4S1ePCiTArAwqeQjSJ+LkZqjIzLhVhFCZGLHi2R2SI3lgyQ02ler6
	 lWgrM2RVFHJfOieqm1ctrjg4Pai9+OTGZqIsPbQf4XxUsV58F6UhzLmNL8uDfKRfkX
	 xL+cg2+vJ+ALQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D09D116E2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437637358.15225.8843147084837065107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8921d8456de8900d4e3bace7dd0e38738e445ea0037c5118403bcb3088da83
Date: Sat, 29 Nov 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764376373
