Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50107547054
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791390634; cv=none; b=O9Hrch973fIxhmXNQzpSRo9JAaeNiqUTXIaTRGVJe1EwSpD3991ca2ZQz1hfpdk/CGnoKbz1kTu3BIXoDMnJN0i3AHJSMStgjA6b6j0P8FdjANfzCdRrNhsXGglSg7K1El/Vum2tx3AgO9z7OVIEXzpgU1k8WoGDZGwpM7mGswU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791390634; c=relaxed/simple;
	bh=jcT6j/yyW1KoWo7T9aqoKwuCvwekAdtEUvzojf/Ux8g=;
	h=To:Subject:From:Message-Id:Date; b=JYOdtv5/jSXNIOdypX5D8VYuUuKLHvQew0gBLb+b29RMiFat5eoDWzqBggRgkge8jUQXcZCZm772ro3bEBEzlNIVIvgcpx+udsmgIXwxBy7bYQdNiMc6HLeLjctN2nQizOroRv050vfMG4KD+Imkbn0HLHnclrN0qx696uqwCQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL2o2bGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL2o2bGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6784C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791390633;
	bh=jcT6j/yyW1KoWo7T9aqoKwuCvwekAdtEUvzojf/Ux8g=;
	h=To:Subject:From:Date:From;
	b=XL2o2bGVFqzJIUTDaQhzQEiVrI7rryEEqhGtSxBRiJRVR3761UaK49SyZnVAa3NgN
	 iqbNm7AXxZGiMujoAFhpXY30/Ed0sQrBnUPfXMAUxzMGrWUH8xkyh2ugPBmqNtUzwl
	 7dVjEbEHLTYdV48Mr9j7JdCFp8TtdASAyMxzSAtHy28Zdb3h/+b2aFRkBos6GPW5BW
	 Uft460PH0br9OciQG2tjC91uMDte01XT3a5ogyngrZa5+FB9kPdcLiwaOW+IWcqkP2
	 3LOA7gG38sL/3+Z7nxjbVNcNBkmri+j3FM6TrNKAFznHDELREaLlhI5R88Ot8uurKI
	 M/jMahQ4CkXAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAD4CA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139063369.32080.14766561721713183457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f04ed9edb3d94761642b73fbba5dcc46a42eced4752c5560dee40aeb846ee7
Date: Wed, 07 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791390633
