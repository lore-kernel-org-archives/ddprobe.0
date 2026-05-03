Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170AA182D0
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777807054; cv=none; b=D/6D9nB6TvfhHw9s2fg0bb7Q8WqOcoMt2L24s7otDUYe05A+eXPuA/tYRISR23bWjlRbOZT/qgG0LGlHUZ4fHQXBdzgdme5LhnK4CgNScf3wEQZ6T/ZRmgC8D9XpvgppbbgBoDDfrz+28d2EsuW8CbIUAa47jHVPfyK6Uu7h/ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777807054; c=relaxed/simple;
	bh=Qc7gwg30uLvFwgC0pTDiiNqq1fo5ubjK2hW24uQyIOQ=;
	h=To:Subject:From:Message-Id:Date; b=ax29diu0BRV3uJSUlaoE9wsmU6U2kEWSYA1AnScPFg1GBS5A4kNv0TgZuaTowq0Xd48ozNdmRpQID5mR4+rQnBtVvfIj1MN8Jc3kQPQy7uHYYDLKT+kUnZ3SZ2cDXNO8Q86r/mrZWE2xEyJAKEJn/dNdEcMrIs+PrRJOWrYQSZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0T5UoCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0T5UoCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21ABC2BCC9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777807053;
	bh=Qc7gwg30uLvFwgC0pTDiiNqq1fo5ubjK2hW24uQyIOQ=;
	h=To:Subject:From:Date:From;
	b=e0T5UoCZvmNceaX3Z64d8NO9IZepTxUu3By7R7eNHGEftNmUghsquUS7vPKDOcQMv
	 V7JkRbtGSw2VcHx5X/qZ+sCd1qVhqXRb9JjukrRY+YXwzCt3dZBvEj1krYgEoPGFst
	 E2s5CsXbtDm5quXkdyOzIRXbDxYXCdtQDck+CViElFm/Vscd3nPT1aPklxVNWntBZS
	 yqa+KLBN0umNtVJFH9t/dBMoDfp2s4xk9ZYWwBf09pblkZg2wUxolRVZMYYA29i+O6
	 /lzTxDbzEkGlqFp25KP0jL8iZX6sXj1Tm6uYOODQgJrVCNJsg6YaTJQDs4lsFr4oRL
	 JItbvhcuCGIEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B139EFF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780705369.29547.4409968411956244884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35725f534533fb8f8b8af7feb540bb52f5225220416db32521bc048f542b7c6d
Date: Sun, 03 May 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777807053
