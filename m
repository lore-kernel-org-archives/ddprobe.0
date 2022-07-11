Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C511841
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 02:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657506412;
	h=To:Subject:From:Message-Id:Date;
	bh=QrFUNeAJmhHwCoYGZuBiTmgvg1WNs51szV+Kw8qdDhY=;
	b=CexAC+qXaLJBF1SRetrlPNOY5+uystCR7dJmrV4XCoMdZZzmnCATzNEY//6lnCyB
	/0Z2rnG+/dnxDDjeOAYC4OCrGp24PTuu93WhebDMTGj56pBlf4XYUGfQU7lJFS2bgLn
	H8Qpq9F09XtNKtJVUOoiYM2/dYTt7r2Hl52KHrOk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657506412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QrFUNeAJmhHwCoYGZuBiTmgvg1WNs51szV+Kw8qdDhY=;
	b=jIDBcpJvsCLX0MLAparO3h07fMjzgUsmqiDlApZpoHqhsekdp0XbHbUxN5SqrhMe
	viA6rf4DOFFbqCYZDeUqAXgArtjelEx307ms5f3HsKJ2Mq+kjWtBNgr3NU1C9rPYS7J
	nXiCrhXQ1XBryLWhlV+v0wGSLsRS1PO5oUbf2khM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eb14b6ee-41a0ec21-a94c-4a49-ad82-9a915ada17d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2fe4a4af75ecbcddb9bfe269d437f83192f58450260cc6c60e9260b7cdb8537
Date: Mon, 11 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657506412
