Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A753F9FB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760953794; cv=none; b=Xlo7b/yvZAUjVpJe6yFYaOeOaGMxKAN5FsuTf/ZB9tY2i5kah6+dneiprC29n/UUO+mBT3Si9X7ojefi/45kY4N8vL0/GmN37MC7dSHC61Y3JJRe8WYpd1hhK8YTlMRz7+094I4Kw9wRrf04I0UY0Pq1xJSDFzVrdqgKyYnl/Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760953794; c=relaxed/simple;
	bh=4jeaTI6+MyQH1qrTPrtb+Y6DadWuQoRJHhQpr51RDnU=;
	h=To:Subject:From:Message-Id:Date; b=KttJcFeXa6aujklaFKtrHDwbXd3p+/vUKSNV6P9LSlSH3FbNJ9lhhAGY4vSupMBAyLkL/WtXFDG4+qJ76DXH0kn8uFjwq6hgv9vABHodznGcZr83iPapF/Rk5a6s6DLE6QcK+6JzlHCSHyfhcIqCaADiMTJH/54EmmyVAvDhfUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTmc3Ek8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTmc3Ek8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D232C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760953793;
	bh=4jeaTI6+MyQH1qrTPrtb+Y6DadWuQoRJHhQpr51RDnU=;
	h=To:Subject:From:Date:From;
	b=HTmc3Ek8Z5ePxMkImFJ/aaS3lS95a45ovEGSiC61RcMBXVM0omUVnULZ5hTxgUbgE
	 xAv6Z+OeCXBzZDhf+bHEv7NQefWElMuQK7eHeBk6mBt2qxlL3sPwEQxWGkLDJAtNus
	 UZXLADw0d2M7cCQsGwrr5VTqDkhKwlgdhHTjJw/gPKFwxIrBmsQyDxJqI0r+zQlBH8
	 6g0ufzROrZL6CPTuzLyIyowW1sV34JsxhxWPBZfrLEQiBGK3t8CVcp3eooWiY3rmMk
	 dfNjBSVlMorz7jHwq6cClEuID7cBdz7i0ux4qmACNkKnV6FkWIaBHgVqd8ywRyMKsS
	 70R4VLTFGcVPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F002CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095379357.13174.1747751042027807989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 049967c48839930b926247c7f3043d2f8e915f90732606fc1e8000161add6017
Date: Mon, 20 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760953793
