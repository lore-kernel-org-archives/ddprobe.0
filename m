Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE14D23D2
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645035685;
	h=To:Subject:From:Message-Id:Date;
	bh=Gmq+1Kok2qwLwMN9zV7AX4q6KtbRdU41PKfvnuRk55I=;
	b=jYqoWzm+NWrWU/Bmqz6TU5pXUscqVe/JsCr+V6Lowmmq7kRt/LoPhNstaVEfekwo
	n/9pn5DDbsyixTBwUpiPrVrDscjaBnoCSGC4soDawSKpzwmOQ7qUiPkH9608DPosQXF
	cGfjBBKjLA1Pp3GPCUhh8RHdrP13oKIH1mn2Gfyg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645035685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gmq+1Kok2qwLwMN9zV7AX4q6KtbRdU41PKfvnuRk55I=;
	b=cOVu3FvMKFh+EOZD/ydkIaPI0z0+V3EhX7hhYIZmYASn+0gOwy+KcHNcpHdQaj49
	minlslwcgOdfP7DCzkwUkqHjM7V5C7tMcwivInQHxLMV5htjigzVFv374UKgpRPMMH2
	ZO88Ff1byMn2EX/8ToviTUbUMx6PA9mwG8KUOJWw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f03c483a5-b2aab0ab-800e-4ce7-8049-d8aa41aa06fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2d55476d254b19a0e32bd1dcff01ab4a8f642a14f171980e7d924f0ccf1f6bd
Date: Wed, 16 Feb 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645035684
