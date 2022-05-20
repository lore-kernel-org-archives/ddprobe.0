Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2114815A2
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 00:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653006599;
	h=To:Subject:From:Message-Id:Date;
	bh=dYhaFLlOz/6kQCd4+ANx3UiOTSfsQKnZnEhrJ71Pw6E=;
	b=MV9cNgT46B1iFWybzgswy7MQYD20dxXAK+VhhKYIKDQGrluXegNScV41pvrK32qy
	GnxzAw1tvd6snFNIrM9Li4Sx3FTzmRJ7BWWrVV8TPUL+e0Gnx9eVqgz8bymHDH6KOvn
	8MVbKTGsSAXRKU2lCYDkKqzuQyAAb8+NNs/+6LiE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653006599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dYhaFLlOz/6kQCd4+ANx3UiOTSfsQKnZnEhrJ71Pw6E=;
	b=h5cIavhA+xwlwiE3FYWL8cWDERubbpZLw10pb00/gh0UsWOd36I0k0L2entMfRtS
	7NozEmgVpzuCWEQ5vzxwUoNMqvnFUKeuUcfb2SzgOxN90MrrqiV6SXEXiFdiGyETF24
	yusUEoDTS2BMZteq4u2jrLd3RnRcxd2q9Dm6nhrQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dedf04b4-865e2634-ae28-4389-bf61-3f7dc504e41d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85b25e5b16ca9b135182e78b614c608297ed26366c8282b1c24fa84e1579e3b4
Date: Fri, 20 May 2022 00:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653006599
