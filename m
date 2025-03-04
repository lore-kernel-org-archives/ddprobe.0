Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AEA1F4622
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 06:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741068534; cv=none; b=T/E8KxlKJYUot0bDY2i5VZ6jXgXXmJOXHYEHoV0Zb1pd1yApnz8mOtzzb/00Ksvz6WGaZO1MWiKgwUZx/XYT6Xc0jr39aW2coOe2GjzDD8/NKsnBaP0kIH0rnfZBX16hIBfCnM+ju82/F2irFI47IrCxAUVrhDMfO9UrKUz4kw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741068534; c=relaxed/simple;
	bh=2hB2QUgR644LqPcdYNq1FOtIFI2dJ/8vJc72RR3QAyU=;
	h=To:Subject:From:Message-Id:Date; b=CsCS8SvAiQFFFo8vhL0ABs7HwfjAn6uqUSqlIGabB/qadxBZ56Xoe3sjirfat6xDt87b0TExuBrigpx5Zcj3w0UvIlogLL8GC8KJL6O5Xw0B/VXuucV0RR5mdrLU8JZ1SqVgto3vncYq3pP7gBqIJb++GpxsOlTru6t9g8ACr0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ry/XhBPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ry/XhBPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3DAC4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 06:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741068533;
	bh=2hB2QUgR644LqPcdYNq1FOtIFI2dJ/8vJc72RR3QAyU=;
	h=To:Subject:From:Date:From;
	b=ry/XhBPIconE58VTP2+5jkarAp6jZ+aD5c+h6OMRGI0pzvBAHPJiLRB4ISD+9Xd+2
	 y/Xjrreg/XkTZywTyLH5zM9+UTv9g8K56AxB/6PveOJa8GuhIL4nt8GypWItJXBxrx
	 q3p2nnhyncH58qRSMJaMnYb0KJPatdLcSOKpSzq2ZJD0btzt47hx6VadZD+Bmwy6N9
	 FBheHbx5FdujJ5WHCCKwEapAERnPuS74fMj34CnfakX4gw+EMbZIihxB+KUqR32k16
	 HbVc6rw0hDAKvEAvYMOBY4vwKP1FkMsIoS2r190qZJPfV7CpHwVk1ECeVXKI25bVFA
	 MWei/DAMgz1Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A502C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 06:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174106853362.7558.5409672698052261938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7c680ab872a75e76edb0275090784fa6cb9a93cc2a8478ba5e4a2fdfb425d28
Date: Tue, 04 Mar 2025 06:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741068533
