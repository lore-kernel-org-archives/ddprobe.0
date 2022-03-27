Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591237E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 04:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648356298;
	h=To:Subject:From:Message-Id:Date;
	bh=UNEPrxXtJJc/lV5S7NxTtKngwGvn7MQ+wr6ieu2vP2c=;
	b=L6j8zlfMY6JRTGGqF4sKkW0X6QPSHX7FyayXS+4IJ+A7HMhvrsEv+2bgY1zoUudG
	PqINH67ac1i5nQ5GvSpZcyN5bnv2pv/ZPiBWPcIfkcoG2M4RLeCft2YmcBeufkVUMWp
	jP3O9h1CtmW62x7H/GmVgYVgxt2gLENWmh3zJdKg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648356298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UNEPrxXtJJc/lV5S7NxTtKngwGvn7MQ+wr6ieu2vP2c=;
	b=EI/JAfvcCnpiOebvWHT58r7l5uIDbujpLxbI925mW9nTZQX4KmCypkjuHf4aCJlf
	iXeUNY2YnKfFZFVe6qxgVzsdwlB85+lU4MwmuiTYAfLhU+0/Dz1i8baQvUeWtONh5oB
	0m+u5HU07XgTreqgYUAVnGzLju7qcbE/BG/B34M8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc9b10eef-8bb43aaf-ebc3-4fe0-87d8-1e83f1e4ec2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 797d2118ef6f15491819bfa12d4086bb0f16f7626c8d73af42cf98530513e955
Date: Sun, 27 Mar 2022 04:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648356298
