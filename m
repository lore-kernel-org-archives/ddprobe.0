Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27350A32
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737185154; cv=none; b=AqcZP1hxIzdOO8Y6Z3Ax8sU3nfPjv56YJZF4aW5ZFefNV96NUJOqX5xkj9RLotY2+VU50KEspqY7InTAEGHZIWFhXQJKMmkLlsLJI5cPAwiBP8BxMBv1yGu5id1KrqQ2sXNmhFEdLRG6vAso+9h0GkR14uOtMCRV3jqpFNegYdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737185154; c=relaxed/simple;
	bh=Gc3Y0NWw6UX+r1yTAXeh2c4SrypAa4TCI3Vb5ufN0x0=;
	h=To:Subject:From:Message-Id:Date; b=E8Nm3YL0mQ0SrrOqVP613tXSJOjZR8Pzlv/BHfWzy3rDzeuDjAE+MFYNAytJLPNVGkosGzoeR9lSPyt941xzuzJfvHDRZwwNfaD1K84WFwBLKuALS6okNeUV9I2aRzqhHUQk55qONtsRNUxk4XJ5py0e9WMpiq3C1O0rDEGzk9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKU+yYfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKU+yYfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F61EC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737185153;
	bh=Gc3Y0NWw6UX+r1yTAXeh2c4SrypAa4TCI3Vb5ufN0x0=;
	h=To:Subject:From:Date:From;
	b=FKU+yYfqSGfo0+lozg7k57CZ4kKQSef9VerTdMm5FwE3jgDlmunnLC2Yc8ZU1G/vA
	 0+KKbJ0e1xwADIDJH8w0H72hXe7J1vbl4rwfKlZldrVUFt56wY/DiFV4s13nLKtfjJ
	 ErZKu4KXTgC7vLWlq1terOK34vDEDAeRx9Et9DrGogamF8kVDxNTPZdzO2ptPQQFrM
	 pzt6p4EAeA9c/nACmVJUsA5KsMgHHtTkDqDRiFZtfOKG77/WxRrYJ8E1Gs+UA+3c4B
	 lvAv5/FMPhsbHLuhaDYSrV/PmQHlsXfZP9k17NuZnjW+aOSHVvLXU8qyccpm44Lwja
	 UH9bO+Yrrgnbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F326C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173718515358.5209.16092551354645970803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6624742842b396aea333c0a63750591c5165bf33811a54aadd07980bfdf2982a
Date: Sat, 18 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737185153
