Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CB715A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659235852;
	h=To:Subject:From:Message-Id:Date;
	bh=Y5ckQgyn5q3BF/0y8SrA1fbpfixO8foKs3X8Y0noWfw=;
	b=TY/1Dd7u8XBoMEYdRfkeDllgIuMUJDH3DbpIQH3kVQ0YvY+J5mU22SU76b7ohE2b
	/hDC/+tC2RRUIPnep8eonysxxbxomW74ItxZl0HRUYRmNrMRaUJh8icDuUKPdG5bdOt
	JGAV4Fk5dBASCNeS4ao/inqhxt3iIG56GRKj7gw8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659235852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y5ckQgyn5q3BF/0y8SrA1fbpfixO8foKs3X8Y0noWfw=;
	b=F6xSnSNbpc5parJVvTD7sANw/7xOUjxqK1WwKPk03NAxgV21uCY2ma3sGdzL18mY
	pT3TvttWXJR/djHZwMapNNROpsyKMrJw2/1XXjZGRrlVDRoQsdm4je7J9wuOGEeRsXE
	XNmdu8aRx/HKLIVHRGrbBSJ5uQc3Njp2yUYDML7g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825229e14a-8365f5a4-8df5-47fb-9026-4bbbaac9bf00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c72060225880ec81d9c877760b11a2612e376b173c19630a01319d20077bb47
Date: Sun, 31 Jul 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659235852
