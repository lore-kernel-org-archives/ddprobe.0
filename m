Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE82288C39
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748440794; cv=none; b=Khx31ljaOalPomLXvuVdPqkovFjGvPMw/2Eljx/ZSBQ7pVrXHcMxMcz/SNlvqATpddWfT8DNLrfa6D/97023B0nCrhsNlYX0SvjMB40o9QVlxWaRp/gDz9v+EgAnCix+mqbd/L/WJk5VHoRwpueq1lpRFUiV8vxsJtdX7exX09Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748440794; c=relaxed/simple;
	bh=ZArAHkuYwG2eK8RB63uYVFnmYXLEj3OlyVYh0kL4QCM=;
	h=To:Subject:From:Message-Id:Date; b=nlLbdrIc8iWzBIUG0JWF4eYe+B1c3EnM3fO2RtM0KGJ1ejCcr9yqQCSF/zKOic/9x2arTg3+hOkQwClBwwejcfYgAw3K1I7cl+JCvsT9c5gbyk85cFjGsZbiJdPhjoicSQCzxX586mryNeQWOVjbP4sdEmuftURRcREgDyGfiwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFr55sKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFr55sKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F512C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748440793;
	bh=ZArAHkuYwG2eK8RB63uYVFnmYXLEj3OlyVYh0kL4QCM=;
	h=To:Subject:From:Date:From;
	b=dFr55sKg89y29zfnFusFYV88qQa9pF0Nza1htVF3jA2nEuQrpju3+ZLJgfvdNYZuS
	 yKOxFCv/+ag1mg0riPtASEo9XNoyGFqpSYcJkw7t2DRYqCAVIEezOVO+OfmJwrntXH
	 iYHlGAgA/fRyBXscaW/L+NjFaWMA8ydw+PoFJyENC8QkAmorB5oNumfC5bGyHg5WKI
	 vnxVNtUUO9E2RBza+n/HUZqdpkQus/B4bWKOHrfbdBu0t/jGofeLzXipd57bx7Z7Z/
	 rJ3f44oQpMJ+oXjGXlrUgHylkZlUeudVxPP3yo6wkF8R21MjYHpoEJuMM2zcW9AwXB
	 ePgGLy1t6HpnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E0C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844079357.2309.5610135241899057014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872efd79050ea6d1391e9c2529aa6b3f2dbf5461f6301ac905e3108d9e771ad9
Date: Wed, 28 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748440793
