Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BCD37AA9D
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773499494; cv=none; b=s8DdM9xfXMD9jmS544z1jgBBiokrZg3L/13KURVp9Q8XaWtb9LYZHHJmrcGG6QZ1jA5s6NHTmyP8cYrjd8p8eH5Mrsmb68IQQsYvUABg9oplPkkAGVc9D9R5QuFngRmWZ3vrp40Tek/4ALij9CZ5EdkCSo/blRAHAqnVrHDGXZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773499494; c=relaxed/simple;
	bh=yor5XY0UyyHPw9TznlAUGRfStrRkPfBEGKvpAmSCxOs=;
	h=To:Subject:From:Message-Id:Date; b=ZqIgwgk9WkthNIDE3VhdBIXcLSZdliNpADEoqN/pGjApXmoyIWrJQT1cQ+Mz0K9ghY+s32mWHYYnCLLAYaxz4W+DCawNNp0pZYm/ji3uhPIs+lszRUJ+BniEIohYOyaigCwZKrUsJGvHr9m3mOkewXzSbFqrNJFvTKLu++q9UbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3vfywJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3vfywJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA011C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773499493;
	bh=yor5XY0UyyHPw9TznlAUGRfStrRkPfBEGKvpAmSCxOs=;
	h=To:Subject:From:Date:From;
	b=B3vfywJ3u4x01nF1p0lKq5Sozi7kXO/sRd8rkVZ5g6XFpy//X39LlhB9bc7A0zv5/
	 gGY8zjOizHR3BUMzQhsRry5Lxb9aD3quBCNK+ox7ppx4lI0kk7pqH8e9mxkQKUaEtd
	 KThQmiNXTCBL5fx+YVHRW3qYR5F+67ciUNLF8x/CyerJOmAfghxaniBe8onVOevAXt
	 Q81XgV72iH2g3Y/ayip9Kdb01hNKh9cw7pxS0CNju5AKIDtVCNOV+ivvIqckM96nfW
	 RlQCtGgqU4TabLz96/zWl+VewRI3RzI2iYRnEzVqOeWNxD7YnbUl5Vi2V39FdfSJxN
	 Q3t029OlcxLDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6CC10706E0
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349949359.25227.8397501842251875753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0160967de7daa7079147707bb421facb68a295bda4b8a822dd41dc3b54c83c2d
Date: Sat, 14 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773499493
