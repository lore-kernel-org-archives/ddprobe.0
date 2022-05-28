Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1667F
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 01:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653700799;
	h=To:Subject:From:Message-Id:Date;
	bh=Q9EFYOwF74KNpvj/mg5qHDcIrfrgOlgraQBDlsS4xAw=;
	b=AZ1STEnSeCl2rDPjZqhFgCwVJxezTCoS345cgrNGzBU0m5+Tqsm+rxjtS3ObsErt
	YpVFImiPXjrsgJ8vcGXJV/BlwiLU8FqBeycHiryVK1oYzEdMSlGaNInCXKTyIw2IoT8
	RW0Uhi/Da6zNBtA0P5uXYaLXQ0MMQNIgZIuMEDrc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653700799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q9EFYOwF74KNpvj/mg5qHDcIrfrgOlgraQBDlsS4xAw=;
	b=hCWlQKC2iCllFXIwz+ykNDnqi4iHeefjv4Dbk6mDDz7WoE1quRtqErW0Ax/qmX9F
	bir4wFtsaH+lClvB1k3Vbd3WWrE7aJKS3gxh0wjM7TKKV/Fh/dCD5fRBhcgoordWtLD
	sTvLhRqv7J5nnlXq0BVmlQyTAnM2sPGkHaHNVHFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181083fab50-06c9360c-9057-4b8c-8a15-6e22cf6e4f8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d0deccccb6706f21d0cf45bd5ebe1ef281feaa1b3b00cc3264b090fac7e392c
Date: Sat, 28 May 2022 01:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653700799
