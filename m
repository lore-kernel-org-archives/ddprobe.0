Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309CC12C544
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736572554; cv=none; b=QdvvH4GbgkyCnq+qoovkZZwPh30xGkHFZPr79VkxqmPufeCwgdFE3n+6vJ73RHli1ck9W6bX+orTXeoLTqgrLdG4mhGA4h12Bw1OMlqYzTE8OHpVtnpJhxoAddvTiqcurWOLaHq6cDx8X/cUK0hBKvGThkr8UX8pdIainY569/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736572554; c=relaxed/simple;
	bh=y+2OKUvHqR+xItT30mdOlJIzgRgJ/jIgYsMFk4ZSciM=;
	h=To:Subject:From:Message-Id:Date; b=LVV8O00d9zEsgAP5DtP6QMhJ+H6veDeiAwEwri2fXNLv7pCt3q0BtAtsOqZOfACMcZ1nCukyx7UFRZM5nor2Uko47Z91L91zdOFm3kPszXYO9qQwIQwO1Jv5QFPDOD1Vh3B6aJ/qUjN+xvqD8V0Jf4L8K2yIHxLyZaR2dM1hX5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeRP/G7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeRP/G7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0C0C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736572553;
	bh=y+2OKUvHqR+xItT30mdOlJIzgRgJ/jIgYsMFk4ZSciM=;
	h=To:Subject:From:Date:From;
	b=VeRP/G7zTCnu3a7gx3tUvJysezFkL15DR4gHv5SK/Gl4GZxdNdqtbQ3H1YSrqzDFl
	 SQU/tl2yLo6ogNluhtGr3IGnD6zRHTeRwoDdHGkGFB8h3o0dCCSByKdIANSRUS+OlO
	 u4Wwp6PLy8Ozm3jd/FYMgetfC4G/DFnIZ+yHw1uLsdcF45VBkD0npjSN6GMtEoe9IL
	 o/P1HnVy9M66yOBIKxMg0GBjI403lhQPh8dQUcSsx0Of97Y0wabbkaPACHEVX9vKxp
	 LtUZX6yrnrLg/t+6eFUabAqibinJzQumt3BO+5UZtmGIb8+35+e/xYQQnUoI7Tgxmm
	 XGWNg1PXOAf8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C8FE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173657255359.12293.13733036821140482450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec83a78ed37e84156f98b144ee51cbdb203b694d5f47c0b1c30902c8bbb4d738
Date: Sat, 11 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736572553
