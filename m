Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AD72566
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658944252;
	h=To:Subject:From:Message-Id:Date;
	bh=uflPLA/BuDyVeyDpdbfHrvP7mRLSyI6Bvm3b9GS9wYg=;
	b=A88NG6Z74GkTcLjzPusG8HIZqgcLXuFAErObUBw1feW/bpGJ8HjhMUc19/91Vz/Q
	kMwwEQsewzmIQN6Y5QRleYQdwUxs52EMMfjQbNtM93Q/hh4gzHsaduaE0toIsoyDrpA
	409HDeqKoXi2fjMLOTY07e2McH/8ye/SvloUIEMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658944252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uflPLA/BuDyVeyDpdbfHrvP7mRLSyI6Bvm3b9GS9wYg=;
	b=eh/YAOOBUM8L962UTZRE+yHhSBsKWGgvyuYlbH5uH3YooSIClKHJSb7D2y4DfHsJ
	qo9q7sxKolvU0SlE07uWwkvtax7MyHMz2wtGHxM9ZuOgSj4Pxsa1Te4fPErzXqzzVv3
	UWMB5kxCR/nTP3wHfSvpZ2Kqb0pNRj6wYJyMegLY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018240c86a71-debcbf90-b51d-40d6-abec-0d7f1cc2d3e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7355614123e10d4d60ee2b15f2af9b31f109874291676d2969aabf760a65b07
Date: Wed, 27 Jul 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658944252
