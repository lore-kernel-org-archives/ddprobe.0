Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600F433D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647784584;
	h=To:Subject:From:Message-Id:Date;
	bh=x3gTkf/FbGbnwrL5o9dBsm+SCY1mDRU8WWp3L99YxVM=;
	b=G0fOBCAur41cIau4kslsYQR6ZqJJhk98N6cvQHHtbFXUOcaRv0ae01XkGk6/XmzO
	sHHDPpOut67E2cHvqurhixiuYmpx22Ir5lkZ41RhoxAJEa5OBFkinTMQQhsAoTf5inA
	Cl7rkDWPANQMMSO3sx8+tUS6q+iDeWFmbiRbghBM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647784584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x3gTkf/FbGbnwrL5o9dBsm+SCY1mDRU8WWp3L99YxVM=;
	b=Um1520qe7TSWqAaelAo2lxE/KlIw8T+SVqa3pk7rSaepZqqgb4Z0SMEZq0i2rVvh
	1SMN0tMS1iABgtTWylWWc8lNs2OsvuZ3LrBVimil0pZY1NuS/YwTud3rN6HitoSGfNB
	QK2boOMBlo9iYS8GlKVs57E2jtNwyvaiKrqdALsQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa79d6627-ddc48900-ec2b-45b4-b836-b099c80bfb48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ada5225a6d575d6df2231cc36a22e346bebc332280fde0348ebeed8d74d4bfb
Date: Sun, 20 Mar 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647784584
