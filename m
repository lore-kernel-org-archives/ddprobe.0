Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE62125C0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721633754; cv=none; b=Zf9fZQJVax9VXPGm9UNhyiiAWCr4kCnW93imhAg/6Ubf66+N0NV1V+C6hjn9EGuvkupSnIRMhPTB8IfJ7/zKtaPBfifYoI22EgOxnA1FKVyAoi7HdwHNYko//qexSZh770Udqkr84CtGjOCCLhjMhpJ0TwzFdrCFK4wBrernDWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721633754; c=relaxed/simple;
	bh=fVoGjXVYiRbGkHn2kDzXBQDlu34Gd6SBYjoxeyMYud0=;
	h=To:Subject:From:Message-Id:Date; b=oqxMY0ymL5hPUNo9ANPFU+h/96rl93Xb49gb335CEvcySXWv2wJlVgR5FO0wCad+Rmu7PmMeU682y/p3AImPf06pStNKfXhAD9WTi2hXSViPziZAPs3/9C/cxW5K0+XM1FuVQBF69g625ByPrq9mLzL7olla8A0o3pUny6yBQQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+2Bh0qV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+2Bh0qV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC9C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721633753;
	bh=fVoGjXVYiRbGkHn2kDzXBQDlu34Gd6SBYjoxeyMYud0=;
	h=To:Subject:From:Date:From;
	b=s+2Bh0qVRlx+JmBtGCby74Upo8bx1us8JD9BUAnZBLfE/RUMfyK/U8FRx8j9qcg4e
	 8FV+qxjQLjKz6kDGO8is+3r4TvI578dOEXhRr1PNeAtJoaZwc/CMYuvzlvr8HhWu4b
	 p+AjPS4uUjLXpQ4dZed9rTdJVjWHB0WjAMYKAF6+aDHwjWs3OTZ9QYStGeY3Px+qlc
	 Q4PyyyNUbGYmpCSmrXYDENxmooJO/k/UqXsqBtiF4VqrnaGofXnW41/kNzAy17QpoT
	 rS9gtN/c4n95Y3ALz4+kMfeMCHmauH6v15KOeBjvApEjEy56ChUYIWoKjUNam9gdmf
	 RgxNZ38vyAXkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923D2C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172163375358.28031.7199282799304716411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04fbd75050f2bf49e74f6c42adfa142a6134f42447a327995410277889d234cf
Date: Mon, 22 Jul 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721633753
