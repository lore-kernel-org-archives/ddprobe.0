Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15EC7F5
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 08:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655023259;
	h=To:Subject:From:Message-Id:Date;
	bh=CQsetEeOYmjcDFE02lrTLhAYIAPA8E+29oQv5oyxsn8=;
	b=bXyOMg+mlXdfNuUH4oVqIlJ7vkKIKADgUr5izeElDWsd/DU/Mp/hKq/ptoU8nhk7
	Y889gVXM9QXKA/VQP3XtGLEyMBoA2ndd3X2uhuG7NPOJzGgBa8IdPN0eqr7edZPvFuU
	FgXZntpGZoqMCsIrTxH+NN3FPy1PweUCBbi9ket4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655023259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CQsetEeOYmjcDFE02lrTLhAYIAPA8E+29oQv5oyxsn8=;
	b=F9KeW+WYKjOhnLOttZOWjnN6/eIGLw7HgQg3pxqPp5le8mxbWcv91K/HmP9Ayyvc
	hl7tM7z1gg83UECsBuuDcpKaX+esFvfvMtPkyUOvoY2sGlOiHXFCmi9Go+7mDya5okq
	pJ9xqB9KaL/uK7mnzRNIY7kPtCmQ2TdBoFSNFmX0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815712ce5e-0b770b44-a2d1-463e-88ee-d1de923437bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a574cea5e86cd33df9a6053bbcfcadcbbba7c6035d7bb03e7ef8d15e81e0ee5e
Date: Sun, 12 Jun 2022 08:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655023259
