Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3832E2848A1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779767554; cv=none; b=JgD4eidepviYx5quy8SMv/prPUV3tdYheu2SwESFWDVrGfBIpSEVeB8kAYcignUmm99dRjQn9rDxKsNVuICaVbCtIqv8d5F8cqiDtM/jUIR01Ozk58c2GEiTG0vRiTs46qCS+ORAA1R3cuccn84RFD69NwLQIwlMmAXKbzXKoxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779767554; c=relaxed/simple;
	bh=otP0ZLevQ2nbHfV73uD5yFYZjVMMgHmjvDpU7xhrSQ0=;
	h=To:Subject:From:Message-Id:Date; b=PmCSXRPwV7Q9Gp49kN+BnSaPhozO4kqaOzQiFLH57ZYWUs/im04i3gR1Kw+a3/1V5kZdkn/22pZfRqmG6Sh0xubSxj94952iPkx2a4xfuPr1SE4liUmIeswPRl+/I5mqA+/xrWUMSVnRqIsfUsBzRSK3huRSWZ+oNV2CkUPlfP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVlHXd0L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVlHXd0L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21B9C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779767553;
	bh=otP0ZLevQ2nbHfV73uD5yFYZjVMMgHmjvDpU7xhrSQ0=;
	h=To:Subject:From:Date:From;
	b=DVlHXd0LcLYA4fa1QbrfQx3mdGyYJFvKgJoa/OqP/6jEU1xf4WlpSGHcDz8ZFVcSu
	 ByZZi6hPx93W96cckNTgAO2k+/WuC5b3fU1h9DVnrXqL/0XPaXboaNOX4dkiugx2Y2
	 f8uSIRdY7xty2S8JSzJ/RONfsGVqDjZbrqU3swpTAVt5UYj0RYObT5fVgJ2tit8Xuf
	 fjp3Z6w333MkhfoJVZs0oWJd9KHxABhSX276WD1RnhkSlQsTTNexISFTtEfoCeSADC
	 NjxSjZw3nyKPf3jv1PNYfKIMCR+TA0bWV4wHNLIZqGjm8Bu+xg5oJwxsBc/qG9dBPS
	 KZlTKzNzEiSzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F0BCD5BB4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976755368.19307.4542154752539569283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df95128c07fb50a099552fb2508c66841f5830618b8a0322e567cbe6329043c7
Date: Tue, 26 May 2026 03:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779767553
