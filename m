Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE633AEF37
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787512834; cv=none; b=aTaQHf1DyeidWjdcpx+riSQifW4J85xQywuU2qMB6mciJ3e5QNGKKvDGx8zZZWBRqRhIRx9Ymd8W6aLPm+7pU4pOIb1LLN4veJIR7is1mlQ/MZpeOxFMRy+GMCJZsdWhQ3dTNrDxD95UHoQj9gwaxhmiB8QTBrU2ne/M/cIcDtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787512834; c=relaxed/simple;
	bh=JLlpvUi2RzWZoVvpVIm1ySlXthdT53PTkJ5SgSXnFco=;
	h=To:Subject:From:Message-Id:Date; b=HmB2t+/D8GDSAonJFMrEiCV4y3aRz9yg0qcYWDeF5BJV0bt4iuROSgYjmK9pbkYlqIkRp+4pTqkYpwRYDu5gOXz2H29K7bpm3nn6Z7xV6vQGJVoq5JxX8ZmAqKd4yn9EYI/kGrMVDW3bSw9hDgGfUsPlvElRPtkMIXzSw6JebBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5+xTs91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5+xTs91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE345C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787512833;
	bh=JLlpvUi2RzWZoVvpVIm1ySlXthdT53PTkJ5SgSXnFco=;
	h=To:Subject:From:Date:From;
	b=u5+xTs91YgIr02/6zeMHrf21nISIANHOfYAvM7oT/tYyok8kdL93JcFmxt2JPOdmu
	 kOXczuyzSo83n+IbkWB3WEXXE9hob0M6RQwMwDOY3TkwDot5f5ZMMczQWPgP4c8/AV
	 FD5kz2RB5c5VWwRH8/ZW7FrAbmjMdXymM70TxJiPQrX6kOtMGFOCG8S20/dIf7/nsR
	 QYo+Nwx8U3jEhJBkpaE0dVqtjaZzDrHGi523J2+Ez/X7LpKl9/qTa8NKPs2YDQihkq
	 ACMTE8bjVm35uQzknX2xDWV9citRan8TXH74u8s9h/mdRctzGbm/jtpGkoWptaR/JW
	 jjGDh7PnXCzhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA903C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751283368.18321.12936802275863884515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5678fa99204ff7920fb3535b21ed71251cb68808f929d6a87ee6ff555a913d
Date: Sun, 23 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787512833
