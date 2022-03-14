Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1426AB3
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647288984;
	h=To:Subject:From:Message-Id:Date;
	bh=VG5ENcNtdtKBJO769aAJhYq4PTKx/GPZJ1h+iOsKv44=;
	b=geUE9c3ED4OyExbP4VLLWut/2EvxZtFbDmeQ4I2fLe6vT8erqqNNM0QxqyhudoDX
	5U7dYQr3hfQ61UK/Q6aS/TVe+XiQJOsGrXRkTgdsBGgIOq3IWyUiQrBgM2UXSO/ZKEd
	/+i2YMuIFc2VqDRxz9iufDAye0RMYVtQLVw+7R6c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647288984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VG5ENcNtdtKBJO769aAJhYq4PTKx/GPZJ1h+iOsKv44=;
	b=iTNOeL2sJJgtQHHAK2Hi+n7+uEiJ2bS7emOa/FiRtlw6hFoQeaJ+t9EihuEjZrFa
	RJNFQ0uRoMcjOsrJvwS+KshojRzpIcvbrYlFVlkjR2B5sWPch103swWeio8ye42dIsu
	0Mhw+UdRpqWqY5hrZrX9dnyPkTwHd9j4iu7lx7SM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a1324b7-565ea594-ce6f-4592-aaaf-e4c4a0eb88f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de3cf6702ad4892d3bea5f7b1d7d0475381a6b340815908637b2839ad7be5aeb
Date: Mon, 14 Mar 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647288984
