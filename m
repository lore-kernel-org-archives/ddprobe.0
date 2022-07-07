Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DC17C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 23:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657235812;
	h=To:Subject:From:Message-Id:Date;
	bh=OyDfQOYl+azFxkonXKwCkvQ3sqHoYBtv8jhkXfzM4wE=;
	b=LcfK/gYhxx68GMYYr6QI6ZbLnn//gPPDiKy8AtIyGdlHG7gbcgPMj6/K1GAQ64wr
	jGTxesGRAL7gy8Ht8sdlKMJNnR/+0HxA4Kx5sqTeYJYvONQMu/Df2X0jUPFRygeacHQ
	3rjb9g4c0zVwWExjgz5IWhiSuXDqqByJyLlNt+K4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657235812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OyDfQOYl+azFxkonXKwCkvQ3sqHoYBtv8jhkXfzM4wE=;
	b=WOiyEcLBKhBbQ/3akLX5Z38nAZPqqiox3/ySY9I30/wDqV2u38V5Wd12kPiD/tit
	+x7x/UQEsD8pZrVIqHFg4uqYukQZBReRSz5qdtKWoHLOn/Wq+gWJ09IUHf8VsT2W08a
	CKmOSRutfhwWl1F/So75ZDaTRM+z0/ryW9WrGn+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181daf3afd6-c460ff16-2d68-4ccc-b8d1-88a104eb3fc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6456c3da056ff34bfff1740f35ca8df6adb610c8955d29df92e95749c6d2461
Date: Thu, 7 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657235812
