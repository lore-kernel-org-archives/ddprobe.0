Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6CBC4A9F
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647551784;
	h=To:Subject:From:Message-Id:Date;
	bh=X+qHllFSVVCiQeLqye9mHG0pniTXMyYYnDvKeRMg9D0=;
	b=JWhYCkC6BUIjKCzevyxB8FkBspsYHgfgg2MFm+gwJDSEM0ZBh5OpfwzWvFStOh1O
	7ARh1E6Zd3TgGdmIB39ZqCDYodvr0719ZSrBHDTpV56+GLkyA0fZvIfLpiuWFPJArVM
	ggTQTSXC6w/LXar9LmvXaKbc3Ce9n2UXg8rdjBkQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647551784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X+qHllFSVVCiQeLqye9mHG0pniTXMyYYnDvKeRMg9D0=;
	b=ZRM7j6KtUVVHV3PLszujtVK9lI50wc0XYgMfBAndiq40H3J5W604XhmpPRxcyRF5
	j+9dD9rdGqD0VOgPwobfVyqPUBqkx1P2XfzgsstZEo7uqXq8gD4UKKtza+IZ5qbTR0+
	irJnG3NR80Wu4LZXsRTx5jZbr3h1f7teZsrlZ+oA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f99bd2752-f851f04c-15fe-48f3-8484-ea4edffb7283-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83a3683390c1ecda598dd7bcd5ab8c15d64ef356077b25996e19903a75c66661
Date: Thu, 17 Mar 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647551784
