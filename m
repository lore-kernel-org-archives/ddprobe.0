Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1448D163
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 04:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652416319;
	h=To:Subject:From:Message-Id:Date;
	bh=edKgUFxJLbwDj/d4SHp6RnHyq1VYF+9HWUsjURd+evE=;
	b=Bup9KZge9xgvae6seqlEcF7Msr7g6wdLU6CvdXIRxlqaU3nhvyQEmHDepa4SwOoG
	0dcFAxkB0NvVb1iv9hRgAV4+3lrNr5Q0zXLTpudlCryZwxalmBaYq1vz7fYZJlJBU2v
	N14xCKoj77zHY6CSWWlJ8M5msSNMT3Jb4N+KyYeo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652416319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=edKgUFxJLbwDj/d4SHp6RnHyq1VYF+9HWUsjURd+evE=;
	b=OnksaInCvDRoZidXx2TJVe+h/QqMWp8z4rJxutArrW9995zwlKLr8tynVGIOFXxF
	hKfC1U3EjCMoxNqRDGZKK8/qxXpYw8vcFwD4RuXmzDBY4goHs464RjY2IZbWpOtZcjl
	HDxz8y97h4ntO8FWU6ReQOV24CRnzLiDJOxaN8uU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bbb00f8b-4c72071a-553f-43dc-b6d4-8298e969be44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8afe4440c41a9a621acc3a862793c63cb44ed8f8f0ff4c955586093099b78440
Date: Fri, 13 May 2022 04:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652416319
