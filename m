Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F86F3C26
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 14:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658414212;
	h=To:Subject:From:Message-Id:Date;
	bh=tc/i9i/XU6tjuIyKvtDmFodjxgm8RnYQkbHr/e6Zk4w=;
	b=fiMyz2UoKZxq6A9EzSfEKR5qRzNnRPuOl9SsFfnED7Jpytz/SFNuSuNC6RQY9myh
	cYzfZIEP2FANOcOd41nNmPo4tgLyfFVQhCqtXUDnx0Hv9trfZC9GXuTmjrnFBWdv/qY
	wpFuRs2tu764X1u0coYrBK3KyI/GDpeBUMQTfs2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658414212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tc/i9i/XU6tjuIyKvtDmFodjxgm8RnYQkbHr/e6Zk4w=;
	b=bzBTEw8iBD21IxcX1MSANsT4wkYzkpyvYT3RJ9l9BIy9hNXX8SSPBsbHe8QGRYwn
	JFrZUZGAUYOCo2QIDmSmvkqKWxWTOksef3BS+Rm3/hSEg6F7KpaC0ile3GR574a/ihm
	2oz/xj9BsuieK+VOb7u0qyUmpy2sEvwi7RPgMWzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822130a4a8-5cdc0c30-873a-4bfa-9bcf-8fd6ca65fae7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5a5b9098164da450c9b6c584d2207242fc15d669c239b4c5c35fa77f7daf1e7
Date: Thu, 21 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658414212
