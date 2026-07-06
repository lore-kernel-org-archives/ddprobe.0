Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EA9387346
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783364914; cv=none; b=UIcbcZRsshdp/Gi6r7pZ3O0VY0k1Rns63F+SndSoWBwuI8LnzAP0Q9dLEgzFcLslhhekF3NhWG4Xuk23d5MQB3IUJLzdToF3T1Q1G56GM/CaSW9p6S06uvip1lN9/z8RnahkexXqV3HaVV0+pD/ERRE6G9I+ZPeYoY0BLMZsafk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783364914; c=relaxed/simple;
	bh=UPG4uL82MYvcgLY1D/AlOfEknqoowyRztAmhjKXrEf0=;
	h=To:Subject:From:Message-Id:Date; b=pQ/Ns7bQQvLwaQCZRv4adg1KuoG5+FEwGghjch5teQ/icfzQthSg0XHIAJgT9sq7C3/6Hmlb/TWNwAZWMPTLmBQ6r4HJpEKDpCoMyIPdL1qAR8gfh1B+4HsKDF4nqUtSgIIcH/gy0IzIDtPIrTcPOcsz8ZN+LzYlODT8jrcJ3Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9Kq1PhB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9Kq1PhB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1620C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783364913;
	bh=UPG4uL82MYvcgLY1D/AlOfEknqoowyRztAmhjKXrEf0=;
	h=To:Subject:From:Date:From;
	b=e9Kq1PhBrnyp65LgpxbR9Dr0IZb3BMFXKd+tnWXPtN/CWPXGKwlCRUaK3rKsoKlic
	 m7QPtzViZXhrbqC1Kx3jmRywEjo1mSA56KHQbcEsxMIKF/6Pd6EPgNDHCC+m1d10Ld
	 UUyFXapgk9bBRFrpJ+J7rcALqWbWXkTZV5kYsk0+jA5ML0HFw2ZTtwV1ElCrRPUzJm
	 4PMSIh/7WKlPOvdkJOcfmwjbPl7eC1W2JHNzjesRaE3gsu9UsRMCp14zYKbBHO9X7j
	 zGW85sONe5XSu/2a1X6prL8Rl3vneEt/5UMgSc7Iz6h/JDQLT/fvHknXpqNXriZyyK
	 lv7fOds6Ekg0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED5AC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336491368.1279.8956869757253157862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b264702a0f82fac76df39dcfe83ebf77b560e4820b44bd7ee127c130974fb377
Date: Mon, 06 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783364913
