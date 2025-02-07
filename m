Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A96E23C8B6
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738943754; cv=none; b=aI4WufRJAqXHB+XsR/RZp6FMA0XT9B2U54b3Y14Fh4NpWpSpIiTtGaE6a6P7+FsTzbU0AEaNk89Cn+XCnBTDL47aut/AkBhXPY69FU5vA32n3WwWL+H8HABKz4Ugl4YOOjJ2JCGrvG/+9p7qng5xuw0lrDObRdL+oBg0uypf3L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738943754; c=relaxed/simple;
	bh=A0XdGBEypToLGqJuROqrA2YKrOOHqB/kHif+b/xBo+o=;
	h=To:Subject:From:Message-Id:Date; b=pUtu/dFypaQ7b+v5y/tTcgN8BUPumg7wZkzQ/Ntv/P2FPgAz92t/VlwZhT17x5Eqalxkys+XEzMnblA5y4ILBIK/eQv9I/HPmQh80G6He9WRyTdp1TjyCXekwYhSUDq9CPopkwXWk33uudNckDAOB8ix7k/+faOUZ3lbGexYZ0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbOiMYhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbOiMYhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFFDC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738943753;
	bh=A0XdGBEypToLGqJuROqrA2YKrOOHqB/kHif+b/xBo+o=;
	h=To:Subject:From:Date:From;
	b=AbOiMYhzatMvk7Zno/TOZwx1T6hgQu4LcxHaTpQm2yGW84lNka63wLCQ20qgah0lf
	 zPQ06XZF42G5ES37ZCkANLp22jtewfiLxRVsPDfdrGFW2tYg5ZkzqDcAIAnG4g1oT7
	 cllX9vPUHBlj7XREnEaOGxcyGzkebTA3IKT6r1rqV7wOERlcQKWbnahX9gnbLVQ70m
	 8KkN54QfSUH2UpFI0CFZ+lg8hNQduf9aEPAfXTyDeF7FAFyoLOCAfsgxDnwGfUbQdP
	 Pq2txgzfRmyPfBPiATBNtr4ifzmTyp2HggzohU+cAYp2VUCCJ+ylFjsRh4RanYi1Kw
	 FJXwqFnTdDkxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7A5C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173894375362.20273.498228061928608445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d1fe88d2c9fffd7cd2f9ae06cf93d8ed19cbf409cd4eb4ff85d22e4e66502e3
Date: Fri, 07 Feb 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738943753
