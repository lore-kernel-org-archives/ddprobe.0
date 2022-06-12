Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3703A7FC
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 06:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655016899;
	h=To:Subject:From:Message-Id:Date;
	bh=wquNkH4VIb0ole7drVI30bdKJdXUEjnZWQmi6jUOX1k=;
	b=fxhjG/tj9BTxJ1aHi8NibjeQEbli+qnboMnkZAjaBX7xuWXk6ruf+segoA0N38Il
	Wgtyg+HoTDk/TyaZSUC6BzHMmOrgpk9opbxaA6AOEnGQ4RU1aZeK4l7HvMTuUlvCqNB
	e9SjecBoLnDf4JeqGl43L8+eZgAGRlkkDd+25F+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655016899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wquNkH4VIb0ole7drVI30bdKJdXUEjnZWQmi6jUOX1k=;
	b=P2D6FPsQKKg4nxO0ab/qtyyBQ20Sqc90zp5WaxLHM9QHV1uEKVuyhuX31DdEEcbx
	fIMaXjRjWC/BJKzUF+Jknf1w4MUeSrxn3K8+Oj4Dj1gwDCZ8iGyYznhe/XoHSz7i8rH
	rK8alk69ruGRRw6rEmRvlT+46yGGYHQxRZcMN5SM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018156b1c2df-caa87ed6-13bc-4ed8-a229-cd6ac7cea496-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af84e434789569f537b6dbfa40ad65791008ccbfdfd9af0a7b1cc91cbfa4d628
Date: Sun, 12 Jun 2022 06:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655016899
