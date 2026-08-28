Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302EB2517A5
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787887834; cv=none; b=ulWJAxadNBcmYH7zgREaWWqO0GgREXCMA4FXWLw0VdvJd2yoGJfnVXmkyHrhRRaVm7zmdpZ2DoPg1ysqPn1R2y3Uw+WGjekGuzvOWyU9C9yVh8HlhyRuin/bCnZXrmj0wYotF/5mo6cLlSG5IsO5cwpr+/yRpsVTK56hbepWa9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787887834; c=relaxed/simple;
	bh=CuQ4P0odPtTgmOIxijyHGYQeYUmIZvMMJAdpNGc/hh4=;
	h=To:Subject:From:Message-Id:Date; b=AIwWbWjk4kb1YOXW6pd2KNpGW6kW5+5SJsii7Jsn6bxligXcOZAa/2d2oe1VdNzWQDdgWQCKsDwpnflcNQ405YJG3l1UQaEQK6JaffmaeEplIxxNtsdJ7GbLF17n8gNIw1xA1gkZ7/ogZfKSyzHVygO6WS7nHX49lo3qZKWlIfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDofh8B4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDofh8B4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBF8C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787887833;
	bh=CuQ4P0odPtTgmOIxijyHGYQeYUmIZvMMJAdpNGc/hh4=;
	h=To:Subject:From:Date:From;
	b=kDofh8B4adjHTEf8wGqbZ8lZQKmXTfuDYYBqNSZWhpL+WQFgY5rniVQdJS4kSRRpF
	 VrD86LlKg7TrbVXGa55Uw+HONQ9Yl4p8GOxv7MzTG9E49qGWXSUsflT2lyf3+N7Xbq
	 NtdqZiZ8PmA2t3ZwE86rqSb/5BN2cbuj7WLVknP5s8BnPrQnPvjU1Im1qNOBYSfep3
	 I8TFaDAGeUkAhdEQyHnReKKZIekEXqJwaf6ceEipZLsjBFfpn05Zzq3zIaoOoGyLR1
	 7zvFf1gooTF8fKhhYJR29/Tv1MhVFGSr57oJZpA7LzyNOESuEXpG0bPNv/gi5E2L1w
	 IR57uqob9ummQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9644C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788783368.7251.14397584251281949017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aac72eee78180ba450475ef83222b1b24477d77f7aeec35bfd1fa39155f946e
Date: Fri, 28 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787887833
