Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABFFC10EA
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660532453;
	h=To:Subject:From:Message-Id:Date;
	bh=9ldRZCjl2n5GBL9yWeHqPL2nBNpufg59Rnkbpt/UbVA=;
	b=kuYs9BflT+6vOloynAp3yXuo9heKF81f0IuWF8ogk0kbTu4Nfw6yf+E9AKOBzOPF
	GVnzJzPcX0eOQlhsqY/SByifDpFSVTep1i+HQ5dpdX8KRf/Wq2NUUsnRfqiSOc0uxU0
	7jfbmM5WBYy0lx4fUrQMbbYoFMvKzAsUpbYdnYYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660532453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9ldRZCjl2n5GBL9yWeHqPL2nBNpufg59Rnkbpt/UbVA=;
	b=GcLx4kD2JGE6tmJjp9OOT0uhpphbvzzx93/g2JoEobBBm949qDrKs2TEaeyv49W7
	PpiGBxFmysBc2KPlF/KkVuJGQyu/XccoifUeqnFi3gnB/VUGnUAVeahmauQy1bCAwbR
	MiCH4XiyWLaXQ5zY5sTBhEP9e2+58ZjTDI0gBEkQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829f726cb6-f9ccf6ca-2b8b-48f7-b92b-af5f72480f33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: baf8581c8bb23dc67e9132adb1c233079f601fa3cd354a9c9165e837e4c67e6b
Date: Mon, 15 Aug 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660532452
