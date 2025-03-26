Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337961E5721
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742995794; cv=none; b=FtPUmszLqLLUSvKJMpH0Kg8eUqtXknKN3gH2Y+mhSgk0H39Gy/VLRdmGG9Qf842t3dFo+1YRp7HchzaqZkYcE9r2fR04/mYoCklZyS3uQJlcSvQDiuCa0jHYZvuzqZN9wYsY3CKk1c7Huj2AB4wp92UiN/6g2FUAnd3LwdPFkbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742995794; c=relaxed/simple;
	bh=By383bh+kevK6oFYzncG7QA+nS6jta60kYLQ9omYKvg=;
	h=To:Subject:From:Message-Id:Date; b=Jfoygq3OkEkEMS9CvUVMUyiUfRPWRIXG1jeq0DRV1i6LxI5HSg0XauaV+Q3QBImRo2MTosts5TexB7w/0OTQ2iwxlkWmRwkUSoD6+JZ4/D4Lyp7OeU1WHbtwh5I6+yADGHHo7SeA20JTMGL1rs4yPBx5HUqOBEfVazJ+LZgbm0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3R88ld/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3R88ld/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE3AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742995793;
	bh=By383bh+kevK6oFYzncG7QA+nS6jta60kYLQ9omYKvg=;
	h=To:Subject:From:Date:From;
	b=V3R88ld/uNRaisOxb/FdqLxQBJXcqsrHFrOBF10+ZbkNx6aMG2UL8GvzXq+9sVX1n
	 NXywh+zRTvCn07oDQgcqIFLKhBrZ+jzFe/7jh1nVOK1dQmuz6vfZcDpwFf8tj7KdRT
	 16K8izfPq1cJLKI5Oleo2Prd/hGs1eO0//E2aMBsmqzc1x0dFA0SvjdPp+7UssjWXn
	 v527C1wqsYUiklt6ri+xRs5Kbgju5LBDHHAdM39ui1/EguMKJuYbZsAfbXjTq2BdjU
	 xLzapoSA+dy0e4N4fEjew1+L1Yz8AP6a0HWnVMCfFFpaWTX5BbR6uJGnIDn2gUC3Mb
	 wrgvcDgefY9dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E8C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299579360.23850.17739499807943642451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828d7f51ec7735bf6a616e674dbc44d18d8dca887c3a0b4584389412e1245b9a
Date: Wed, 26 Mar 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742995793
