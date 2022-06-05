Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7261FB5
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 17:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654451460;
	h=To:Subject:From:Message-Id:Date;
	bh=rwWL5NBGld3EhwtQva4s3XAygI1rMMnUYzuEYzx340w=;
	b=lS6j2NPdX4RPVDe+1247IQtO8wJ9HU6xvy576b36wlo1qUVwQ1go6PuU1n5c511y
	fT3PgCC1dq1DRwC21W8jjCDZoojiXUXbeqDgLu11rbG3XWFssocNkcKMpP6wZPz24dH
	0KYLHYcmZjs6rku8LM0ydVWwcPE8w/PHxL+fYYnk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654451460;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rwWL5NBGld3EhwtQva4s3XAygI1rMMnUYzuEYzx340w=;
	b=ftXGa7cGSBfvaoPBPswP6yd4Lfb+IT2iF7CuJu7vGFNamGIncfAlyJ+LJ9rCOoF6
	Iu7wKaQcqvpsplpWkinoKy4iEfQE7d1FTgeKwlalU5Ik47LcsvHjlkAMjk0O4a8bq6f
	waS+ZSulsdsyGrObdGpmAHh2fVRKkS3XUVJfK04k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018134fdd86e-8553ba9f-6326-421f-90dd-3069e1af5e1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb68277c0bd5cc1ed9ab7342c2d52dbdc80077f3a256dd926aede02e6986995a
Date: Sun, 5 Jun 2022 17:51:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654451459
