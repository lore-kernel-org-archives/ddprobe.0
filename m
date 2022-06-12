Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202C510E0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 16:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655050019;
	h=To:Subject:From:Message-Id:Date;
	bh=6cVX/SKMCCX8NKXm5bOmbIGpbnX6IvT3MbEXCcv3w3I=;
	b=LrDRxnuEzH3xcTKbwN2gfjnFPQGQemsKcmLpeClHMZPQo70e0N2P4DhQZDc9vT5K
	Dq55FSCciNeO5Je3Zy5QEtEBk0viyotWiab4DLz4EC5lELkgEePn7hT46uEfGy39VDI
	3OnGG+VWhxuUHgKAGnHJi0eJuVcFYfhMxz2Yl32c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655050019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6cVX/SKMCCX8NKXm5bOmbIGpbnX6IvT3MbEXCcv3w3I=;
	b=NeQ+cQ8v+3PtH5U0mm4Ulz2M+4pLpmHPgfmE66LzWHUAovDVYNv16Y4UiRoNReyu
	UXub2Q2LSRYezr9d/wUrcJ0XffZixJlJRKDDOGakpdo+QBAtiW4ln60oETZrqDvBeLa
	cXMR5JqqmAtA79sioQ36+Y/AAAJr/gONFwHvAqww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018158ab21a9-94b893e1-ecef-4729-969d-fd9612c55725-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6c827cbc921e647a04815fb4b07beadbc4a0ec108dd56cbb8f2a3581680ccde
Date: Sun, 12 Jun 2022 16:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655050018
