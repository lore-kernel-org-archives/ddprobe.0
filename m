Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1671A280331
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786117834; cv=none; b=O5fddBSG8yoJNioaqj/cQbl833yj6LxWx8+S+bLBUGxIXVCOee5QJ8x7Qsbpi3W5MneR6bMwXgTgV66Hxcn3gpEJ/+vFu86BJ3UtZWf3Xdu5UWILeZzFV4vQ8L5gLPpOLFeSB/d6RENC6ZBN3GJvDmOmdOQQuIFCix8JHH7quOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786117834; c=relaxed/simple;
	bh=ahNKQ4jtGnXX7JGmyMWZynCran7MT4jtmpPvm3posnI=;
	h=To:Subject:From:Message-Id:Date; b=UsnMrUV30KyJbVRJGZamAkbei51CRIsK0Tr/NXuVzBhsqI+tA2y+IuMfvwszeY1rv4AYJPMpNgCVjE0Doh1fTUapCtSI/Tqwpft7o+jwE7PyTw/+MMr9/Cxa92C/wPMKO3S0OOif4lccfZwlWwjRA/E+L/vu8vV4moOJ0PD2gDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAs5vh55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAs5vh55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE00DC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786117833;
	bh=ahNKQ4jtGnXX7JGmyMWZynCran7MT4jtmpPvm3posnI=;
	h=To:Subject:From:Date:From;
	b=PAs5vh55yteYsTU4fAfJGl3X9RoctkhrOAvzz41GmT/LJ9GaXe88FmJLcYtl0IpsM
	 RvkDdaZk/c0XMGPgU0YSAXGQtGruEWeoHYd9jA5IsytWVFSHFBYkKsUbNkrtRGRSuP
	 JxaHg3EZLVgy/k6DLrmJ251jbkF8HHLPCqdFBQU80YSwkWth5Iqa2n/YbEaFsmW0fd
	 Kp/yLpMbd/u8MUoHtpdNAifVA4K6gV41njLLRhy2fd+Y9dTtc92KlYdI/WEnH79707
	 AQ0uLm5Xgty0k+3tgkfCkVHFpuPRYbvpLf7oBdrm3y1DfYkBDt/qNs6lHFsfJ2OCJ2
	 S+tj+3Zhj6Zhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA774C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611783369.32495.6975347842702010369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f19d142004a474bab5ccf328036ca82510df3b45e3c9cd6f64a13f0aea0d83f9
Date: Fri, 07 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786117833
