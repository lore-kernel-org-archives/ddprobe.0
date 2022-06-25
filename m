Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6354A19
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656159412;
	h=To:Subject:From:Message-Id:Date;
	bh=SBFgLqp3LXcc8mD/b+1lHJch8FEpWMpJyoDQBZS8dvg=;
	b=NsOGSG+Qr0pNidCGnUT6ivI9aI7FmvNwPEpUpKfrVN/TuO2JElDAJoFuaqwMGw09
	6wg7VaBfiA/GGBjeG8+AuIRGykZmw71FWeyFzCr/GN1FguXnleQV3067D0TpYo4pfJ9
	oiF+6h7i2H4Us+vKEzmSBuhXUITlTslNe+Ch1m8w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656159412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SBFgLqp3LXcc8mD/b+1lHJch8FEpWMpJyoDQBZS8dvg=;
	b=T5DSgwdwCaMJY6bRlGx1s6awt/JePyW2dimhpUV980cvTcxDwG5Y8g9uKQLzLt/6
	Ee53mJlN6fZclii/IveZ9Kh35NUbm09jq9d4jUZuRbNnswOC/iz1aykU5fp/Zqr4w7U
	usChQcpk6rhnJ9G0h7ORXuKYZeZREXBhCjtYw1NY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819acb203a-43af35af-c978-4010-a315-0e7658c81d19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89632224a9e39fde7f1a137329a7d5ad8f7158baca6e536cb13b5f27302b8f98
Date: Sat, 25 Jun 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656159412
