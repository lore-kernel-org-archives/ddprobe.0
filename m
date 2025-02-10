Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C5F170A11
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739176554; cv=none; b=DxDSoMlBg39GeFHxk+tC4auIjgXLKgw10RZfPd4jaIXWXMUKLmx3xkKULCP+QD3UzoqQPy/0lwNOOdnjIjbtlhOVG/Zlv7NQwIbWQy5sq8V/wdnV4i3536zZeL6jiMcmTtmR/d2XeXHG+u7eaWmbRuZKmTgJvVqC3Om/j92L1cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739176554; c=relaxed/simple;
	bh=daPLF//mxmGARU6RjSaFtqS4y24bbOll0qv5jdN5ZUw=;
	h=To:Subject:From:Message-Id:Date; b=RmEzuV49N24Xoy7xuMOGad2V2CmDSngZKcrs1Wf9e04MKIzC51LImnlYedajyUHrmWwzF0wY7Vb91/50pBq2uN2ymHozUNqeIdhHptP1zp2JDpo3NwGWf3F5LDuvfxQKLezkoBpEcfz+6ym6AA1RRgthd4Q7LYYTKXwDFh9rCio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KggHgI+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KggHgI+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A44C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739176553;
	bh=daPLF//mxmGARU6RjSaFtqS4y24bbOll0qv5jdN5ZUw=;
	h=To:Subject:From:Date:From;
	b=KggHgI+MmnqgZ+S3Ur1DHPtWXW2Mm3njVATkOEURDD2aKi+WvgKvsZipA+7ttMzaq
	 QEfLDItxTZIUDnJG8CXL+jpS8TuVNanNxCKq/oWNcYIUyyjtC67R/1F/nWvYlciQB9
	 aFbGVaYKgUYwpQwqCjKHLOYuMhAATpijLW+RGYQtLuRnXleETuXWy0EjTnXSXjbz3Y
	 w9M2xi1UwrwPiWiTAgCF7gu3/QNDDuowseDaOCbhJLEDy6VgGXJfo03gYiMM/g9DLn
	 gGoXOhNr/kvKEmcGXj6CYnlEv8SzUwiyw4O4j9rbd6iQ4o54GdLgF07ORpOsCQaYVk
	 aMBrSnlZDm/Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EEA6C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173917655363.32619.12260147440266142529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbaab5699c08f0e96f0e14e4632b578f908419225014e368d4e601795463eebe
Date: Mon, 10 Feb 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739176553
