Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B037A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 06:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658039812;
	h=To:Subject:From:Message-Id:Date;
	bh=7KKTU6vtmmzF9XaMRE5A4xB/UggUveHK3U5JMFuQa14=;
	b=YP9jzh54oe/Y3tntoOdaQ3UIOi2idcJlH2ciy0yop8H/Wu7PdBxlntNFwWySZd9N
	2+yakaFQrR/K/2HW0PodvxNg3uVXtyeL2tVWW8qWLmRl1er7LiHE6g1I/vyjog2bJ41
	GzrxirT1HghDKjeO72LACADPQ/f79t+5X12VlITc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658039812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7KKTU6vtmmzF9XaMRE5A4xB/UggUveHK3U5JMFuQa14=;
	b=ip9bYE3bs0smm3UoZfAmYc1FmCvFKeDakiYto+Ik93YMv3SFgTkNd5Chvcn9bP+h
	NxO/0jlRcvn+TxqCauWa8mSISkOVpWkMM4EV+bn7hCzyZDRQTdkUUaQuPDh9l8C/t1p
	1r/KVVOX0+jAtGXv3i7jzJUJ2das0P9BUENtRKUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820adfc101-17a46d40-35f4-4375-bcee-d2dac50f4bca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 041d85e1ccda6af2ac72a3c43db379499a6016b819f6550fa3d7b8f07c10171c
Date: Sun, 17 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658039812
