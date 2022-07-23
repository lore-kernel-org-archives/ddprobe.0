Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575A77E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658539612;
	h=To:Subject:From:Message-Id:Date;
	bh=2lfG+wufSakzP1AgL8fnmiH+5LJ7eXincZjaULQVLIs=;
	b=MZe5S1bOT00nnZiqicABxpCn26wO2AVI7ZwY9RneffvOLE1D1ldXY+wpjxjTormu
	cFNahONFNqOZYrCXtendGh1bNyS7aqgG8SNI4he2jNkTrkv1CorWSLSSVwXUtYvrbH/
	BiOIss/Ht+I3rlAu70HmQOy7d3/fcB9lYjcIUrkE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658539612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2lfG+wufSakzP1AgL8fnmiH+5LJ7eXincZjaULQVLIs=;
	b=FkpNE/a5VNz9Wk2A/yUE3XChszsb5uUqRBRhyIj3ywDWKpJTxZnTw0gAYpIIgbZc
	iZRxLGG4IxiXvZ5yXr2lHom2hTFOQGV4QG7oRxx7EKYnVXLj6SV+RWl+Gudxt/Ig6BM
	e09KY791vdz7gs8bUSB5rsn1ZDWZKIiViR51vrSU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018228aa188a-c8346fce-c53a-4cfd-a12b-6adedf222e1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89367c88ed5f3105e5392eac24bb209da979c5795715b3882962e38792f07ed9
Date: Sat, 23 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658539612
