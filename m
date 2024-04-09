Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FE3433BC
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712640497; cv=none; b=GBjOkMUS2TCaS5t6HihCEF9TVegPftPUVZr72HIT0p0xU2nz4M06UKIPnSu5f5j05b8qWLuWkBFklz0KaqZpwKjJ4fBbTKAKfd0zIZXDS9ZBeQyAldpX+rEskgOB5EtlhBlRXGgb+PRy8VC1BgjhsbIWIsJMI/ePSomuTehKTRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712640497; c=relaxed/simple;
	bh=8gVLXJdx1p1eIHH1lZUHyY4Ffot+2xQyUesuc7eBtto=;
	h=To:Subject:From:Message-Id:Date; b=LiijWVmYMeCvNr6Uz4hr0xjYELEatbBE4794JuLtCEBToL2j09Vpfjt4VlQ9PZcyxo6NrVHFcCAxbhUz2rdLGAhaV/lE4Ii5GN7nztj2EN3NEdoBIoijHCtF73QCMwFSFus6BbFkGIqq/zhJtKcKndRWIQpXJEVZqkyn1yGpfaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2ruiYeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2ruiYeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77739C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712640496;
	bh=8gVLXJdx1p1eIHH1lZUHyY4Ffot+2xQyUesuc7eBtto=;
	h=To:Subject:From:Date:From;
	b=q2ruiYeNLZaqvVNWVsnRZNz8BajRQGsTpg12CzSWQeDVEKbOV2kHmixhbn3B7XO0+
	 3aahHdxBYgxvY6zJJ9pQZG1H5kd+JEqtJIrYCAWemXHR9sp94cB3Df6X2EWLLGzB5a
	 Vy/KxtFbZhuPcfEWkHrVZU6vARqydTx2mUtLpylPu2VgkpXM2x+N0fKnP44Q2gSJEu
	 LUhCtDL50/i9kKgOkdSV3PbRDE12Cwsc1cP2Ad8GlUJKLrFz7AQpcZe8m78zC1Z+Ju
	 ZLcwX+/RLAFj4Wsg1tBqtdaBhEa3ZzjHqD/fdv57AZ0bHmyhyswGStKM4g1rDbGa4r
	 yKbA59aRvKFtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62142C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171264049639.28139.8586685450288466729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19517d48e199e9d1fbb7f799bcc7e73021e38748361d488c223f98dc789b1b41
Date: Tue, 09 Apr 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712640496
