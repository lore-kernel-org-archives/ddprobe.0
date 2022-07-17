Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F293462A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658020012;
	h=To:Subject:From:Message-Id:Date;
	bh=4TJyKGq9go8ZQxyGoTmaJN1vKU9G4GrODiatVTezR3c=;
	b=XoLI1kkRfvH+OwEIcAAL8FhiTBim41fAsSAEDGnVrMvjceoM33AsjI70vtvJRS8r
	Fnq9G7aiaLN7kvlnA9QIJECYyPzy+rSwiWVU5yZDov/AeEm2ubjVi2J9un/aWCN9dC5
	oeeYBl5fbfU+70PN6wMvX8x/0DFg2rDEeffheoIY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658020012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4TJyKGq9go8ZQxyGoTmaJN1vKU9G4GrODiatVTezR3c=;
	b=dkeI5lqKSbuA7BOYD89PWWzNL1n17wsaUi4FMiL8hOKDE7/RWhhx/ZX83FsZ+BpK
	q5FNEdJV0qwUNjgRmth6DAIieXuRcNQIaXcZszDKMGAX1VxiBq5tc94HU7aF0SECcM4
	9+WbE524J2VyiVG1Tqn04MmEgshfy7/XY9rFMKuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018209b1a132-389e17ed-78d5-47de-933b-5929eec7fad8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fee658af21aa5dabf507a8d63af769c3a14af8005bc85cbb4ae020f860a2f25e
Date: Sun, 17 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658020012
