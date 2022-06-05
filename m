Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E833346B1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 09:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654422959;
	h=To:Subject:From:Message-Id:Date;
	bh=4orSCrJ39Dw8O3Ynmp9rjaO+yU/qC5hUnTC/2VnaZQE=;
	b=L7AkTZHvow8s643cdH42yyCkDQtyq9zRxaK/cwCcdrDI05Dr68tBPyCkAH3AMJQt
	om811jocqGP4JJ7JmF4Q4CkmODRipS+OCona0ipySR5nK1Olsg+JWpqYJ7RvXhhv2E+
	a+8K6j4PBNuDFqnhajPcYyDVDa930iyPFunVmAcc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654422959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4orSCrJ39Dw8O3Ynmp9rjaO+yU/qC5hUnTC/2VnaZQE=;
	b=Rpov05RK6MDZh4KPDUKZDE8DudR/jGmFw2VAlsoqtQJGLLs1YRViCc3A9UtFqk18
	+ttMjCynXkVgxjz+KmEpODtBs6kfsEw79FB4mjPwHOZLFq/1lTkTxVlPG0C+Lez5gPl
	qJZY+gZpIZ8w00oa1ALzHOwTrrsNcQxsp47jYuVw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181334af48e-190af03d-c6c4-4b5c-a1bb-eac6d09afcf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f5afc3c10aa33cde40dfcdcb1fb54076341dedd53b372e586ba71c1fae039e6
Date: Sun, 5 Jun 2022 09:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654422959
