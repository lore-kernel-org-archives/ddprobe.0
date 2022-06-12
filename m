Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13BBA42
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 05:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655010599;
	h=To:Subject:From:Message-Id:Date;
	bh=s00gZvp3bSCcKfhp4M+j4JKBnk9AxQijGVAaIUQhtLs=;
	b=SmaMtNvRbXedUlhYGXaEeWg18Pl6XzatkhkJ/CyIlg0qY8QG3cJAVUGXS86C/GQk
	hYw8iteqr3RSbwZC7sz86oojZsXluV6QD64ZTA4ojNNpsNBQWz10V2vQ/Yt8ceZAk4I
	y+FvqaBk2BY2kDw1eJRNVE353UDFtd9CdIOJxzX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655010599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s00gZvp3bSCcKfhp4M+j4JKBnk9AxQijGVAaIUQhtLs=;
	b=DaAJUhNlGMUI+p16VTI4eMw+Gf5MpRyo/z6Oz7I4boSgBF4NI0pIOoiVCKd7jLVq
	Fq24J71VgdJ/DsQ8RJglZr/wnMa0fWmoHAPfv9ky9rFhHDb49DTG9RYl3Wy771trHtW
	eSpxY403qmesVrSJc3CiqtGw8Wg3HSm6tGfZarys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815651a13b-46ef4d47-9938-42fc-81b2-b18dabd23f34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85230a2a0b5d5df62db81c00d49aebf404d3731842e69cbb764deafdeec6e1a4
Date: Sun, 12 Jun 2022 05:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655010599
