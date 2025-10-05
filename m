Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7284A1E
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759681794; cv=none; b=t13RScN+p5rN7Q2Bv5/I8BsKBjwdSWKMvaBH7agEdetie/F0/o2XcbC+vWVPQvT5dhJHD6oKDbXgGRldI0MPjXaSUa3Z5/dWHGmADpO2JswVY78weNqAW6Jc7zcGBJHD0dJj3TS7UfR70DCBMUn5gRO8vQJ5ZeNRpbrAqlkQ4FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759681794; c=relaxed/simple;
	bh=HXhi8U3tFdnwZUgpJWNGtuNmf7ZTw5cWsfsqOy2M0iU=;
	h=To:Subject:From:Message-Id:Date; b=jW1QbKLR6hCPJiMUzBoYMoSLqWEo1WhIF5thVUMdPIOniAcOVlfFiCn/d3hTwsi8it9fTB/46XQIuhrQqlVFNczqGAbhoGmDMiYAqwcqIJihIqjCSZJOIM2F6MKoxXzIz+WlxyrHVRR3boI6C2wg17p3nrYIsYggiOXwGgnQYDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YT9ti9d8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YT9ti9d8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17FFC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759681793;
	bh=HXhi8U3tFdnwZUgpJWNGtuNmf7ZTw5cWsfsqOy2M0iU=;
	h=To:Subject:From:Date:From;
	b=YT9ti9d8FmgCxB6mpPI+/DHQovOkBDDTU217I7wOlxAbUmp35gaSHZ+/kQ3xBXin3
	 38EJG9h3+nMgcVA1lBockziEfB3wTYPq466QS223njYpJ+Ax7X3nfyF37gFGZei9bI
	 IQghFPfjiWSG9gJQ/Kw+XY7EjMieGOH0AJJxi8VjtLfyJf1tttINeTfvti5gtD09Om
	 VYR3swv1fkH5p83Wx25aeSoMBtjYP6o50Uj2Ym4n7iO5kfkSrqv7UtW+Bu0Wl73GFZ
	 us/KcyLqmnMajEHKmYTXB5IXHPgBB7FdQqkFApjP15tdVmFlh7rtLDzkiZX2rYBE7P
	 ndyAoEMF7sAgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F32ECAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968179357.19661.12284283777457691572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c9ad5acca1682588a0e447aaf4535578eb924555af5db9415e2de369689a94
Date: Sun, 05 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759681793
