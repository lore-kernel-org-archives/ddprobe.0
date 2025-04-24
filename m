Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388E427A932
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745498394; cv=none; b=LAOHWgNwgUoqE4qSBRqNgYrobz//MPlcAEq5a+sdVxgX3LC+A5idNKixSjQpK1k64HNQPCGU+NrTzPP6J6adg3C77eZ82mJxiacQ16kvuEyNSEEuTEjwzsnzBenApgGzWYTf7X8D0uvGPnSr57/OrJFIQA1aqAyrpCcyozInsGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745498394; c=relaxed/simple;
	bh=J+Tql7LIzPFsg5XJ+Huo3K2L5+KWgYOuVBmO+0nIyw8=;
	h=To:Subject:From:Message-Id:Date; b=Yd9XTtJIFvhQk1OR9xDuDEf0RMDn6KiLI8zvsqwdMDTblMw02R5nSt8OVPgAtHpIK+xOFB2kQz7nAI/Q/qybwwRz8AJBPhtkOjjzkjm7Dli1UDQJQAkKRQTgd/QpsVrGRZIWtdcd0uL1P9L+wa1HGcKdKcQt4KZS93mHKoi3lmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzYSeAJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzYSeAJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F284C4CEEC
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745498393;
	bh=J+Tql7LIzPFsg5XJ+Huo3K2L5+KWgYOuVBmO+0nIyw8=;
	h=To:Subject:From:Date:From;
	b=JzYSeAJE5f8l0D3d9QHVu5VtJ03lRDduTEtN+bYOJ9zJVjF2SQUC2sbvGfke7RQMz
	 3XRANbBy39DOlQHUfBe7PvFh0pN3fz6P/dv8tpTBATjMNfNC2X1SzCWDO+W0ktHJ+1
	 En739Foun08suWrx2oztymkNNph1s2JiWzrnOaYQx26b2Zv9oM7QxPk/ibCBxZsc+W
	 Jpu1WNnYa4x2CwcfFJpwB/sRBGJjGd2FpGEvSXluWCkwFDWCmTMt43vtDoed+PwXtj
	 qNuLm94Nl7bh0RKe1JXAhvbuDkk29x5kNPz6p/KXnSKnLTMJ41G/kyVhX2ZLh9Wmel
	 9Q7XX52z0XmyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB1CC369C2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549839357.2319.12663078364652780236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ea2fab0d873462a8e2003f2444e37017a2bc3243490783db74b3ca433f62ee5
Date: Thu, 24 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745498393
