Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E260E7A
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 21:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654031279;
	h=To:Subject:From:Message-Id:Date;
	bh=cz7bYBzWGpZVLU1P5lf3suRiWgBfCxiZDSgbgr9sKvg=;
	b=B0OcyhKNG9r7Ffg+0oNe0L2uCDukTfh9NY9GH9cMRt/Vxw5JNhC7BauDc+tO70n2
	XOG3jSZ8bObkQfC4wBXGKPV0dOFEPFNKsLFp8KJ1n/LC3Kvf68ZWQqvKqvEixEP3xJw
	vp82rLnwyZFAlXE2Mg9C/dzeKB8gLUKt4cOGYd3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654031279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cz7bYBzWGpZVLU1P5lf3suRiWgBfCxiZDSgbgr9sKvg=;
	b=bf0CZE7+JPjVMiO/Tzs+w7lnFmkOk/pYk6mmZglgOLeCcOzPO/R1czQoMExt48pY
	tX2StdHGL+T3YiUbqSCoznSE2I/bYvB/MD1Mq7kIA5ijQ7RKMUoYTRoa5gGCXSQwj79
	Cq9zgGvG+BYV6dvNVqY9x8B0ces2r5FgJR0q/3AA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811bf26487-656d4f5c-f639-4413-bdc5-807d334b1c90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a26c447f52a2499a71ccf488a6fa0136ffb4120ba27da7f070d0aa766413018f
Date: Tue, 31 May 2022 21:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654031279
