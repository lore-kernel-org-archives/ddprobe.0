Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FF136C0CA
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772263494; cv=none; b=K0QjfUdgrbvqCaMlmNIMjWpFgvdU8CD3oSI9lPU8Vd8eITw/d3HJe5x++KW5OjhWieUi26xodc+4XCy5KtT6p2TKeJ+mWmTxa1hgIj0T6dQxq4HGqS6zsjKgkxOnolEFV/1k/BxTDuyz16LFMKndn3I7l1GuzaZ2F5uGQKk4hgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772263494; c=relaxed/simple;
	bh=Il+MDxZwQPfNUCd8B6wNN2Bk5lqK3pI+thz/JFdmOls=;
	h=To:Subject:From:Message-Id:Date; b=EI0Q3tDz6AjZYHRvkb75qv8T1lT0ySIKXlrI4M3AAjYZlCG+HuDh0TzsjYgqR/pP+7753CrpYvQ758dOV1vKRNUDRYk9BxhY+ekdArbN4RRLU4o5tuDi6Pl0PwDq16hptC5g+D8qMcmBlRYhkG35xAcmkicc61uf41Chsy78Csg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKEajyDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKEajyDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF910C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772263493;
	bh=Il+MDxZwQPfNUCd8B6wNN2Bk5lqK3pI+thz/JFdmOls=;
	h=To:Subject:From:Date:From;
	b=LKEajyDwcWPFw9uGy4VKUFZgJ1LSNAHSkJ2BQVd+CbeMpcqikSuS7wpVnfDHOaPqj
	 6f8xOdTbSzNx4mlYAg28/O4z3ijBSLZ6ZyzJV4nNpXXuKwqF8nYukfquAXC1JeI2ku
	 HUYcDKd9iQdsKk6EUvyXqmZve1UiynwoP87Y3VgxK2gCCoM0z1zoK0lPSRANYiDMxZ
	 g5DHCgdha7S7ywIGDMXdq6r5VFmDatqHiPjF7sxFyL68jQuUTGpreZTxTpfL8c1kRM
	 K/IqTDiUTNGBfuH+vjnup8egwtROztZJGhRj2mbCcSIGUdYH1B0Ka+W3cyOLu5qqPU
	 BRE5lIqZKWKjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E73CFEE4CB
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226349362.13217.14107818768161955359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d72360833a645b928fc88a4351cc12dbc9e1744c27e2039d20ea9191b69ba055
Date: Sat, 28 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772263493
