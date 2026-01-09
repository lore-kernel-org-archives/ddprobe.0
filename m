Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9E41A2545
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767962633; cv=none; b=szcdQYcCGG1ZRO3BMpeKth/j137TiDnXpTNIV/mz+SL9trUuMw9GS4wDUISibdRxsZ+Qk/kPZMsfO4LIEeYgmYM1AkeEnmEvevAPkACAFcdyWg14KSiUNWswsg6uAmGXk5WS9eA/qYOfSry1BaFX2rNgLO3xg387lnGzT3+8g/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767962633; c=relaxed/simple;
	bh=1vFXfVIG7ZtXOJkwjY+14g525fZdNWEI7/vc4a9JgXc=;
	h=To:Subject:From:Message-Id:Date; b=Yo1RiDjmdMBOmztXB9BnImsDVYVUv820+VO55nKqiZDfp1T7x8z9xLMEqDQkZXQGL3M/I7OdUqoeqTVNvm3OCBkLQqBFHFucK6NIy19YaSdGrBecFv3HtgFC59DPjneYc57WY7j0rCHMRtGy5aabnRKpYlInToNE3SWQH3a+fy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWAv14N2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWAv14N2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AB09C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767962633;
	bh=1vFXfVIG7ZtXOJkwjY+14g525fZdNWEI7/vc4a9JgXc=;
	h=To:Subject:From:Date:From;
	b=FWAv14N2AvgyQjMWWWfdGiB9YKzAJE5ZcZ+oqYJhhG5PkBCrGvoRXkbVste845tTy
	 YbKm0L7J33jbjIY8m5kvt4uwlZpqx4cnX6H+rEqj/zWOrk7jyfrCtd6d2tFkCrMpmY
	 Z7BV0KaxxKwW3sgPeYRKbAMIfrZNhPEHnaah5Dq3ZI3j00Vt7l8ZY93b5RbZFbDOBM
	 Ky+9+nFV/zpyudFq7AMVv+OXsVhmEj4A+fTQKJthFHt3okBc8gsAiXaz5quFU6QNS4
	 T8KWJpBtHbokczvnxLi9U/Zo4NjD5hjOzQR5QGLkyVDsTJ1U1pLVG5mPgjncHDZbM+
	 rDJay1VE5A4yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F82DD1A616
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796263357.2781.154803391144313266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93aacaadabc495c7944a73fc321b2aeb5d927cee718414a910233a00d3955887
Date: Fri, 09 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767962633
