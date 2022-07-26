Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641EB369
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658833012;
	h=To:Subject:From:Message-Id:Date;
	bh=YfdIZosTFdMmPmmrQ7XIybT7aIwVdh0YpCoz6o3JbCQ=;
	b=JFoFBUNMx2I4JRrzb8UXTQeABHjuOriSG4qorn05cK5T8V3dyxpZOPIPgOsXOTsC
	lpKAlM0y8RMe9x7ZAzd7Ifte8L3i8ixEc5EEItQmZJ1+oiGJU4isMVILSubR0wqRKc0
	35z70ci8TjUWydz0N81f6LALizyQpSubyYSle5bc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658833012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YfdIZosTFdMmPmmrQ7XIybT7aIwVdh0YpCoz6o3JbCQ=;
	b=bs4f9k1711ZR5zEd3L8f5uCvSoeN7lyrDqjA23oldlXOK3CggZ70LX2g2pDSafLB
	5USUgEWnf2xjL/qD0PW5wFhQvQguFYtWQF8QFv1erJ7x46BAbkS48apLsB/km/fmNIZ
	pKxsnEvjbz4t16FpFA0TWDAtD4ul/puYeY6whJhw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823a270636-fd367ed6-7c16-423f-bb2a-d0db4e45696f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de5643785f55cb9b6b54903d7f9d7b4f867e9c80e1baef1503bc856f0db91bc0
Date: Tue, 26 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658833012
