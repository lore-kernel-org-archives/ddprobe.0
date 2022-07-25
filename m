Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD467E
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658712412;
	h=To:Subject:From:Message-Id:Date;
	bh=bDJl/IwK/d2X9YUHafQ5D0fhTaNTe3Gisow/S95tq9A=;
	b=bM+aRk1Z3Twv4s00EPszbiRCKn7pKsQwejLX3f8DOscaaAZ0npALs3rcfFr8kiXO
	ySOIppyVkw2jDp7UMRQ2djGIpB6wOyAfCeldtelQNbRwzkNOafciFnCoJU2dCqiczi+
	3d21b4KLQBpM5wNVHFNdmRF/M3t4BwZTfcllDp2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658712412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bDJl/IwK/d2X9YUHafQ5D0fhTaNTe3Gisow/S95tq9A=;
	b=MVJYrpgM3k3ocOONUI97nViuL9WLVoqS8MHelAhwfyjNEPzEfxQGuiZ96558/Pxg
	+2lJxr7jtMW3oyfbwsQg9Fa0jutug4nX+JZ0szoNmSZeo2QpHE9ZPs6sDKFeSd274YI
	6EjUB0WqPBGM7hJibx+ErH4j01bJiDJVKMiitVfI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018232f6d0d2-78708b8a-bb27-44d5-9fa9-30fb9619faf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3aaf662d81fdc744d8783651da7030ced3e1dede2c2d5c252ca8a22da247ed83
Date: Mon, 25 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658712412
