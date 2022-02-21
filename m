Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522237B
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 06:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645425684;
	h=To:Subject:From:Message-Id:Date;
	bh=JdcZQBxP9clb/uScSFjgSiJhJDm2NW7sf2MgrE3TDw4=;
	b=PIGIlpIo8/D50I935MZALgjPcSBzSVZUsogsoYRRib+mGsYBk4WbPnk4pyr+x7do
	uOLxezg5RVN+net+qKQYwURWBgopZEGLMFJABkPXQ9Nys1wn1pbiFzP5GRYwyXfiDtl
	RhE8GzUzGyQzWAGX0NF2BBXFGQQkHdNsA4mAEoPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645425684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JdcZQBxP9clb/uScSFjgSiJhJDm2NW7sf2MgrE3TDw4=;
	b=LSOlYZjdYR9tu9vngxd5s7sEevcXFDnszE/pao6GncdBHp09pVH4CtFxrAvbo0/r
	CRd1f0mfbMk947tfpyZTqHxu52NO/k/1cHno/quoLa4NJKoSIBX6KoRidw/yB8VJ8tm
	M2RlXOdpKw5v3kTaOLRZexiFfozIqGDra1yXZm7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1b037124-f5b7af1a-39ad-4ba5-88ee-db3bb01e04f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2860a42f474e5f7f5ad9da95916fa6b5ca27167972fa316f0290105b7445e4f9
Date: Mon, 21 Feb 2022 06:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645425684
