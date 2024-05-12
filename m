Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70795101CA
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 22:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715554343; cv=none; b=SaJteheIPYk4AVVU3ireuK6UqZNerxmOPqr9Z/iQ4aF+wybd+TyXyJPh2jlbFGcHugS5C6fa9QRbwjAbIlfHijFXSRIpXkhetovY0KXiZq+hYfMwEQqpMsmlkx0F6dTtF1RFiT/+7Q/o0c3Nbv5RAH1v2u87hkLqFgT8STEvzw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715554343; c=relaxed/simple;
	bh=tEO8SpzEUkhvlHM5+vNjJpQ1tcr9DQ8FL55ucKRD7/4=;
	h=To:Subject:From:Message-Id:Date; b=GXdn0EI0lOuaX4gc4QAmVtqiavtGQAZbeKkYO7oRzNTpqKB7X+XAmCmrJmI2EO8Bsm8H+QqsiJV3VxB9IXK3M8QcXXSyoJy8V75TZc7JVGa2AtWnMM+uQQxtoVt+KHmHqgoNamUrlul99KebfNzDRiUP7yf7iBJ3Rw89QyvP8HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvNSXi9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvNSXi9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89D5C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715554342;
	bh=tEO8SpzEUkhvlHM5+vNjJpQ1tcr9DQ8FL55ucKRD7/4=;
	h=To:Subject:From:Date:From;
	b=IvNSXi9Tm/iu4w/8b5ryFwHt72FYixnCCGfEG+hnIaXwLBwOrELwP5gCd7IEOw80J
	 9OCCmVjcQmUT54KUXzF4KbYIgfjc/j/j0+fMcyhfusPJgRCzYWv4SRR4/vjPKfV9Qn
	 UwAVoYvMu7QzXFPoNkyHlvbrpNAjQhU/6uWK3bLCwpyIWPxJRNZFrgsvUmM84xTYxG
	 xJR6d8CF97c1VKTvDVUhv1Zz3fsiYiekOuEMLdVGWaJkjIEKHb88eJVd5xKPtcMOSb
	 BBUE2Z5xtyk1tPKdT++IveFqgkj/a7it4FmDyCJmeU83hTgJ78quBPhUQHp8rsmoya
	 2rSR/oiTkLE8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EFBC25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171555434278.4015.15916668233446686270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2694e4af61b7f83a6ee0897dd76508ebe6ef81051e9cdef21796bf6042947884
Date: Sun, 12 May 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715554342
