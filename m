Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E7C4697
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 23:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656027412;
	h=To:Subject:From:Message-Id:Date;
	bh=VW0HZbP4FGGTrReEclXzvSJw92QSlpMkQZV+vNpK16Q=;
	b=EJJr9t+tP6WYyZiSPHaUYibbKhpVLHamfJ/t9wGuOAl4Z0nBdag7FnzGlWMf7Frs
	siRGuzRh7wb7qVf/e97ohSI24NTbHh1ksyWMRYQS7syJ6ezLE5tzJrnBbgFdz27+nO+
	jiQ87zohwYdbrmnkukmk48oMabdNRWneoUzLa0UU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656027412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VW0HZbP4FGGTrReEclXzvSJw92QSlpMkQZV+vNpK16Q=;
	b=gFFZqelreP3ozSgcJkUG7KC4pSY6TKngWM2VsNRKpwukUNNHkadL971o1XTThk60
	QoKRvII0ogb9yDLMkdxj51vgKVUyq43rcGaEZIgA0MjcHx4fd38Xp1IOB4X9/xreEYs
	zADkZ7tCBLdKeqUfqF9zgLBP8lYLy5yp3jQHR4X4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018192ecf740-f978128f-de73-43d3-b176-dd053cdeb86a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f644d42f2fa8e6007b5bea8bb07ca1dd6657618d1686e73bb431a7aa239a766
Date: Thu, 23 Jun 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656027412
