Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224757C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 03:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654830839;
	h=To:Subject:From:Message-Id:Date;
	bh=Dyg4sWc2AHnHRjyjbAYN6YvBfQQz0Q0QqUKOxzbF83Q=;
	b=dur8MdwizENkZRQpXj4GEyT4iyzFZQI+FTSMjdAzpLIFgNn26qd1uWis0SkhL+ho
	wbSL0LwyI/9xWw9XIvdD2lJeJk7nLTINUpmFkCOJX1VBGvyVLh9THSFEyZ8Bx/9RoDX
	TI7Gtrvw25QFlYbyQNPs9DJKAUYOW/PeNNPgh8sc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654830839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dyg4sWc2AHnHRjyjbAYN6YvBfQQz0Q0QqUKOxzbF83Q=;
	b=Su04HNtFLA5L1TPQ6TqnosZ/SZIj76BHZFgQ33FxVCMqQPp9hXOll/whoqzN/ylU
	8SiX/P7CgpJ9IWTNLB/ro0PEEOYzTNOZ1INEiuzDrAoW5KSMAFbbkTV40yQAzmZA4l3
	eHXk34XUWpXeKDSTmekZVk+FrPQpO1/u9dbYIVwQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814b9ab5f4-633893d8-d0bc-4592-b0fc-adb2be0b9702-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d5aabde7f5a48def7b70ad53acef11de9af3b0672442b6d7a6d6b57fe9975c9
Date: Fri, 10 Jun 2022 03:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654830839
