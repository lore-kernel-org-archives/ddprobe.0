Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEB379FD
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 06:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714631543; cv=none; b=iEePcDmzSRaCcoB3jRJDxt8WKzqNLA9oNFjh2mAasYqKA7aS7c59etAgoXS7VS+4ZLKS6EtVaf+/D5lSAqYLXFlFWfJhpAPZ46poJ0FT92uEcPD5aqRFyCh05zElhmT7Yrpcvtk2RsWvDijlZWDBc6+0pCgqXw/yZdP//5b3UF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714631543; c=relaxed/simple;
	bh=LtjFA7L5xTaZM/LmYFxNBvYWHMBmEFpoevOYzODXgSc=;
	h=To:Subject:From:Message-Id:Date; b=X5Mtb/S6+/Dc5Q1qWOeGRAm8FId8QDbsvZi/uWnULmrtZqUseoQ+lPZcuc6rgEGLMgpS5IwFzGs+lz03Y8xiVko+q1Z7Mm58kHUsgQo1g2dMX0wBn1i1GaG3nn4iGioaeKbhmEJstPZZdhUWExZdLzYynsfaOSpBwkjMbZY3y1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLofmKMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLofmKMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1006C116B1
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714631542;
	bh=LtjFA7L5xTaZM/LmYFxNBvYWHMBmEFpoevOYzODXgSc=;
	h=To:Subject:From:Date:From;
	b=JLofmKMueKcl2nPv9bDGBTUfWov5BlWSZB1cAJ5a8ckLTe/HFZD9oboVfecxcaLF5
	 cJAeDWr4oUAoCWHBEuu4SBnOD8tOREOsL+i4Ev8xWMtbHC2sa9v3yrQZXuZ04bvWIL
	 ZnZmN8r168BH9PJYyhunLHRGgVFXAkgpZBp7SAIL7IiMqyitChqGnvEGH9rlcCxVW7
	 7lg7zGS6bX7whbBk/GUM7LmLzTWo+skzKmqV2p0W+KHy6tmuoyQZjLkQXD14XDzlnR
	 T4SU1PG9JiC4Z4X2JJ9N94XNB/jH7/w7VbJjfZ9JKt2WktZ7RjbiEDRyEZB+yiR/L9
	 ip74vQBPsYoQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA7DC04FFE
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171463154276.25457.12485698644375530641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb30bf5006fd03c5bad10b6517895852f9075b18f3a47329c8c446d932141e0
Date: Thu, 02 May 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714631542
