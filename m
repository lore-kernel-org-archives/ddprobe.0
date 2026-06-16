Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C591318EDA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781636794; cv=none; b=tes3wtHEhK0RpABr6r5zNJ86lQM5R0XF6DliZxuCzhxa4lozALVR1sKUhPzAyo0cqSOSCmH1u/xJrWRC1ek3cemEmjaEsVkSWVKkkWREisgnXPo3QHz2QNV+Pn6RduFILsd7HdgbZSK2GVnTk9M98Ci1/Vrh8YxAqqp7m6tuXPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781636794; c=relaxed/simple;
	bh=WJ0t7cUgIFP9l0GzkuIkHH7L/yblPlQmUKBMt+ks10g=;
	h=To:Subject:From:Message-Id:Date; b=izICrJlQ+gpWa6kvmiN8V1GtVcRx4kH2uyO9nSFMV44/ZRAcZwC9LySfF6N74F9ilHt4w3bjdXN5YCAMP7HDvrFNGvieDvDTOklv60B3XuElwl8oycXvUwGarhbQu15tuixfYCdC39EmEQSFhGVL75Y45J6hZxAg/jIG9PDVuUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWaDplbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWaDplbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5B2C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781636793;
	bh=WJ0t7cUgIFP9l0GzkuIkHH7L/yblPlQmUKBMt+ks10g=;
	h=To:Subject:From:Date:From;
	b=DWaDplbGnIFWyqt1Yld+wEIkRJRXKRYWsiyYOmlR/i1HWaqL4BNTk3b5Bi9UEooW8
	 SB5DhC1cJ6ghXuUhFgK4W8EbYsIytNSiOh/bgH1cd6LpfuUkjizS2J4esnnCltYXB/
	 pI2XhTYLOgtCzCmcQtYl84FrTpoMvZLf7C4rX6oTzNP+hIhMXNHi/DmmpolZGgWw3A
	 +Tk/CYe5fB6S1NG7tQ6+7JJQ5OioJIQxJBzhN2qRIm969TiZvxt46i46wLOqAYTkOq
	 gDRMh0mG4XLCB9DkcjKNB6qh8ujcv/bAWF4B1U/OLvXJ5i2TpB2D3nyPj1VBvvwO0X
	 K6HCTlIYOkaEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C4BCD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163679369.22682.10909512989494443512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e746fd58c51025d3b61ad3548b4475133fe5b3e0a5b2f9eaf2c23155e95874c4
Date: Tue, 16 Jun 2026 19:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781636793
