Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A083137C42
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 19:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716232943; cv=none; b=ua86SvqCNsWzxKUC0b3UYdRrXGCKIO+grNJ2xhsmlGZa5NDt4jKCuP5Lui+TeqfGHonSWApTRWbWZLHddO3Qmai/0U4PsDD8B7MoAbAAc3OeWmiiuUklDjEzAWa9n5UEi2DJ/qhQHf9dBOahq9y4zaKX8CpBq8cvJhRXNVy9dAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716232943; c=relaxed/simple;
	bh=G7O2YnaytXwNp2l4ivDwLGxdxbyvhErpQDpiZ/c9hsE=;
	h=To:Subject:From:Message-Id:Date; b=IepzMm+7gXFoc1P2cP1qCHQ0h5rd4LsxUCUNyPk/rCZFz/9Ro7vN7sCdxO2Gkd+ghOkMszUHJkLUc8IS4XcSITM62KLXPvvHaj8lK08irlmSmA7jjwMofyqsgISz/Xq1dMkWZlmMLLH5XOTmGI+Ao43dsJoRbgVUWv0EWywSLpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WadDt4vO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WadDt4vO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE855C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716232942;
	bh=G7O2YnaytXwNp2l4ivDwLGxdxbyvhErpQDpiZ/c9hsE=;
	h=To:Subject:From:Date:From;
	b=WadDt4vOl7B6I/MCkCmBTpeWQYjGT5mHDZDtWJLZNuyhmwKVBeHtHwTYKP+rKA3Z/
	 oBAHwqXv95ncNHyu6S4FBVoAMX23PvlYiOVBwV+sGWQHRyrjgyh4BEjCgR4XxUxGiX
	 pM8UXThxeOFjAiTXH2RqXCbgdy80gqNk7yQE0lhy/VpR4spjGNKDs5rKcSG0w6YHcr
	 JkVtklVZ6aUyfHAPQg7Tuy1ZPHTbIC6C+kIZfMn1/CXQvOgYIWsvaVX2Z4Dtq8jvnr
	 bLX+QsqKwGdzyKNCV6+c9+HyPwoeFR5GCNHQ1IgM83bBH+G07reM7vVNtBOSEpb4SQ
	 ElBTcbs//p+GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF8FCC25B7A
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171623294281.7297.14200193658204031913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69169e81ddf741a955b66c32aa874458d30e5b060faf4914911a70237b7e9759
Date: Mon, 20 May 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716232942
