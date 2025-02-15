Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2A442AA5
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739633334; cv=none; b=lpky7quvBua2pPiQn93SU3xjT7Wdm39wvo37+7BBbnThYHHUMfwdk6vSyeZMxL3UdU7Q++eNC7iLxslNAcQUWDYWlV4/h6mX5l1I2rr+8rVzWFSYNpr2W7JJJnPixGBkBBvr72bjozh4E9QZAHJV+89mvWfOpGEfrS7umFYWPbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739633334; c=relaxed/simple;
	bh=9g/fYlbUqVjTHUhgQb4Qhk3mV5M5yyDzs0otHqSvlxk=;
	h=To:Subject:From:Message-Id:Date; b=jlSLdJYi0c9beyw6K8h4by59oNiltxc5n8ZH+Ue+NgycsyQxRWYryXFYHdZa8xOZVutD+uqNsp6061PdMJqhGz4UZSzaUSfmqi3uOy9MvCWZAbfy8pM/KPFEJ/CytEw29rTJ0oqntq+ZcJWMKJL9eyUoh7LO8I7SHYfHil7JmAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXk59/C6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXk59/C6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B40C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739633333;
	bh=9g/fYlbUqVjTHUhgQb4Qhk3mV5M5yyDzs0otHqSvlxk=;
	h=To:Subject:From:Date:From;
	b=SXk59/C64kOUkQ5PzkdtofdxsGowpoeuFNAml/j31CoK9PG1XfKSj+rgsXhATkirT
	 zCqw0fPgStUtrB53uuEjgvG+57EK6rC6+NZv1GpMQo79FFS+j0oGsL1+J6Sg/J3fhX
	 RbO99mYoHCU2O+0J5LL595QJwceWAc6EsPRghBKeDmBziJRiO5OZX1gJcilz/2oG88
	 QoBCQNDl534Qgm/IVjAe8DufO6YcC2E6D3YNZHuGFke+sgfz2Y6q4ni0bZhUMztkg2
	 TXbiLIlUyVnmBKRY907kWqs3A+D6zYB7ZGn1GZU2wCTZSJ9KLSQDhohISTkWFY5Wpb
	 AlBgT9TA7b5bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE4C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173963333358.5959.17878721455546135700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2aa67beb275d688789f36d2e5742baaab4660094670355884955e64aa86cc6b
Date: Sat, 15 Feb 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739633333
