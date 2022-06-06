Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102D81FC8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 03:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654486739;
	h=To:Subject:From:Message-Id:Date;
	bh=j5IctFrOk671asJfRjAy464WW7RHyTl/THbbzXzcBIw=;
	b=Bo9FrLTvzahJOz++3MQpcL6pBChCgQzfzBgdHBL+ZeMlVPQRvCi3T0qUriQao62U
	Qe4syhJLUagV/zIxKWwalznPTldE5RGQFoxJ8vH4TPTr3mEeEJDmaPouIHPAAHQrSAZ
	CFi28dMwJW0bY6PSYu14Y3j9hWJTHpOVqypvWn4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654486739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j5IctFrOk671asJfRjAy464WW7RHyTl/THbbzXzcBIw=;
	b=B9sT3zCZSnjAvH7VRkRheTGpfgv386q2Db1XX8F6G88d7SX47EK9XKmj448zH6GO
	I/PnD+VwEHyNQA8rHAQLk4q1dBSWHdu3PZsZnv3+OMHJ61h09BYdfp1kneoKdyaPJ/g
	rjd+u7ACdbZKQ/NgfmcsIRXDuXEVIeIB/CABb3eQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018137182916-596f2335-9aca-43fe-9653-cbc2df7110a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bae11f71463d12fc2d06387feda167bb10ed8263247b159f6077da38b22ffe04
Date: Mon, 6 Jun 2022 03:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654486738
