Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF1E1BD01F
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737616554; cv=none; b=uh1uhNkX3khfu4OhDvI+moM3bKeuzzkazq0CtXgPJ7a1diqkh6OARUum1FezzY7ZgiODUe/JSG5OuOML2RY3gn8+4U23t1Fa6DK+ICOT1Jzw/6jzYnZ3/tsdgSZ0ZMypIRsZVv7lVLy3XSueSsBmw7Gl3/wCWd64Rg1/ZX7QjC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737616554; c=relaxed/simple;
	bh=2EDM8k8F+Gu/YrIakZMYO28PF+L5fU9ckBgBduPBVKg=;
	h=To:Subject:From:Message-Id:Date; b=J54jilYB3az94nTr5DSbtYOM34mrYK5BM/dOinG94PrcYnCMmO52Fjd8eExvatHBmL3sMsQlcPRG6sd3dylDmKTXFNTlOuKXQpCLpdobPXDUsjTWX6YubUUSCsrP0rv5u6DnMv0wCeSeu/Manl8qa0Ap/WywGttgXMHr7xsizws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2Tky/Hn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2Tky/Hn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77C5C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737616553;
	bh=2EDM8k8F+Gu/YrIakZMYO28PF+L5fU9ckBgBduPBVKg=;
	h=To:Subject:From:Date:From;
	b=Z2Tky/HnZiKWdbF+x22HRp8Jym4r1kYAWyiFtWmK3wEglMzo5iHmnpTzOWsinyeep
	 lnt/ndJofL439aANttCuxE/kqwUqgJ8SAHkq6adbwyn1wgJ3sqExwt8bQUuHKlMEgF
	 cUBu59ySCDJjSUbsIoxxsu9MsxqUNUwKuop9/3cOX6W+dLBj/n2DG3bMQ85AOGV2Hm
	 jYJDFMadJlHtnuGgKh2qsUmJwbO5eYeHEi/TyF5XGuIfDxk/Sc4Z18nGIsovMCCR8o
	 Jz6NxEyF5a8/AQXIhkC4RFfMCqt5V8520wetn2FA+OiKbEycgDwqVabdLo2dMl3L10
	 NUWXV/XhOex+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91243C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173761655358.23563.16618396736713921079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003fdef15002ffba9a1da00d2cbb0461d6178aa43d413769b9ee23891abea8f5
Date: Thu, 23 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737616553
