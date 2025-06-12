Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D3E2D3221
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749757794; cv=none; b=fn88N0UmZcBtLrdeo6RcVx3VFhUgocP7zJgyE4DBXKZkIqXpRon8Ua6wYrMfVdB7xSjry0ZONFnVFEAPSNAjmR6Hc6Xx0V9Aar3M5IGK/SAyX7knLSiCFakdlI4rzMSwQZ7HxHRuxQ/T0EB95a6MWYMfE1Cs7F0xk1JRHwr3UGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749757794; c=relaxed/simple;
	bh=IRCAVA9TelWCJvIOq1vD/AKfuHH+mkMxo71lZbQ5HAk=;
	h=To:Subject:From:Message-Id:Date; b=EDJwdDGb1w+wqgrafmCTGaLHnHTGQ62oSYcjRH8YovUjOQbYQy1I/g8INMmBzsV5rNwyEOpe5xoNVx/xyIXzOsrYfPxxYHra5AWYoJbUIKXdgVMC2hWCz9PYzPUuKFSjgVIcQX7gUsbrsjethwrlPk+e+ScacMNqgg+Gf7BDSH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGzAzAwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGzAzAwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15BBC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749757793;
	bh=IRCAVA9TelWCJvIOq1vD/AKfuHH+mkMxo71lZbQ5HAk=;
	h=To:Subject:From:Date:From;
	b=PGzAzAwKdoz37SXV29kdd5Yik0+pRioPOb7YGhACWUVOvUNbYkW9n2k5hqm4+UTpn
	 0X8ho3BQ7VmJiwpOYEswpAIJ7hYu1ysYT+B77JgdxW8He53Zj5yjo5FN0ZEGxnepVa
	 qzBa6yMmorj5WWp1nbC5xuOPok2frdJTNCIN71emQEyrFC7H/vuTJWI1KiNVE/0Lg5
	 CF0t8dIzm5pl2soQAVuQqsdcWQdoqa7g9RnyRlAQ+LDSuvvaYmKwF5PG3hRr1c8JOg
	 8eq9VenVZx14TGP3LrMkxNljE/yN6hDPbnhhyjS34YUYw0p4SlB1nwqGOxjTQ/8jt5
	 QvrMg9jIeiHyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90693C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975779358.9176.10843402590146665886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae24a340f52e6d9baa7a8aacaa65091705f849c87770e49c6b8ab5e50662c2d
Date: Thu, 12 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749757793
