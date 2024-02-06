Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3AA96E2B9
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707187697; cv=none; b=WrOsvoGmYvt5PPoqeZkYgzv2+HD57lKgkdcKWM2+O7FpcMOIwdunfsCNKj2t1G/NnFWxzWoclW9mwzDtxvyGEMy9EdaLc/ykAmImf6SIytyrcdQZBOJzvqkONp4e0uubHFG0qi6j4tySgoVlLNoiyVG5nobnA0FjIoxsqONTnF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707187697; c=relaxed/simple;
	bh=i+st7dvhIMiR4O1jePm8lglf5KWuz0oMxXTxOpJmkig=;
	h=To:Subject:From:Message-Id:Date; b=Uu+aPX+wG6c0E1W/+HpY6hzYxs5Zgk/ID6DrYYDFuHDvemDDjXDZbqM7ztb22ZIyTtNSz/Y1qZtZoKBDPkdtstOo8qBdSWUZbNatyXpzOXUAr3Ulv/CHIR32ZHqd4xnq9GfDg9x2V8xyIdGt5QfK0tIKTJHYYLPi+lfUsdP4CLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAwO6xUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAwO6xUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B348C433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707187696;
	bh=i+st7dvhIMiR4O1jePm8lglf5KWuz0oMxXTxOpJmkig=;
	h=To:Subject:From:Date:From;
	b=ZAwO6xUBxLX65/2LfXxb012DDT7DK+b8NvnX/6SBEdSIj+WKiPKwER9KRqFHjh0rI
	 GlguQTdEMUhRrl6VfNu8vF9hrKY1mYQaKY71Op/y6HDrX/Q9XbD70gBlQoG1aa9g23
	 I9ekIUrG1I7dr8+2WGTwPR+zSK0Btn7qaysmFquq25U7XMoqIuASBqeo3bm0flTUlf
	 wBTp83cbj6Vwli3f7eADg2RWXpNSbeq6CWfQebQKCSO0siklNCJfe4jQUl8k8L5dZS
	 Udr2QT0q1jgO4YfKRMDFiRCGT0FzwDcUeHhaaXMIN+WZym0cngdbP7gvhK5NBoZ8cM
	 8pT6obi1wwlvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6139BC4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170718769637.18023.7166504264951567008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fadbaceabca7399a6b0e465b48d766009096922e830dc209e38c60179f56a87a
Date: Tue, 06 Feb 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707187696
