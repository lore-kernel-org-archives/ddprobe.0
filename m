Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1352569
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 22:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653516539;
	h=To:Subject:From:Message-Id:Date;
	bh=qxS/l6NdZs4nyQ2jRktS5ERTrfYrsMlyxfWyZxzUr4I=;
	b=DO0TDmQXzMSIGnpMsfaCI7n2dI8rFdGgZpL9yUYwwvWM5el5B/hrFX4fYFR/46Bd
	tm6VCRWfwvtCoW5ctytaD/II6Psk9hTaI5zYvK5ke6LHIuoSy+k6wCl+fAZer0pOgI5
	WNZrdK7yp1tl3yyyO+T08JgAVlQ2K3D0X208TG20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653516539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qxS/l6NdZs4nyQ2jRktS5ERTrfYrsMlyxfWyZxzUr4I=;
	b=RElyRgW3lI/8Pok8Jnj6YWr1+te1aY8jN+5P2sxW4019U2A2ELRfdU/rV2l4O0ZR
	INjRfAKV4wHNI10qfRqgNMQrNNI/3GWmqktSHqg9Fwvr+OszUsHiC26JslGNMF6SVbW
	HHBz8BAS2L1Ya5TSKdb4F53SrN5uxKvC/m+eQNrI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fd441589-7fee4b81-c98a-4e33-9c23-4f7765c2867a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4aa5d603601f25b362278a28d6e53bb7513441963709aef4b345e5d3da7aea4
Date: Wed, 25 May 2022 22:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653516539
