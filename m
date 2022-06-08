Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3287320A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 17:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654709039;
	h=To:Subject:From:Message-Id:Date;
	bh=hrUno/JZQFs0Gfzfh56akekyb4K9WRtBYPueOJzxeAk=;
	b=UcQSFSn+WHgbIJ2d+XqD8M9noqPydff0e9AQDJTmZqtqoW3gscHr0ouqiLDdrbAk
	m2Bcl9Y2qt0L+kQV47CvGizQNQ6Kqtdr7S5w//FMjjv+IilQTtvS8sQTcr1L3kfu7kB
	yOH+92RPvGTQdaXslJqM5/69xz5lzYv6v2gGXaPM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654709039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hrUno/JZQFs0Gfzfh56akekyb4K9WRtBYPueOJzxeAk=;
	b=NWajx99sfKQJQkLlNHNkdAqNl2KThXJdLvYtdaTSLYtbRCPb6H32/z0ZXH6Tnju+
	gHY1kqjEYOV4fw1Cw1kO5XML+Bzv4tkLDftuGfK93e6fbqdtHgZdmYNTsMgSSm7WzrU
	u2MJVhE99m/wKwk1aP3fqzSF07pnAqKrk7/NTOTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181445830a3-b7976e05-b2aa-4f9e-9fdd-a4dccd2cbdde-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b4b23109beae70753c7cfd47d497e6a51fe442dbca76a45920bb255d88cc98e
Date: Wed, 8 Jun 2022 17:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654709039
