Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34225210B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 09:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654766699;
	h=To:Subject:From:Message-Id:Date;
	bh=bJb7gA2craCewAd+gp0+LL6VO2f4UKCldehiiev+4Pk=;
	b=XX4eJpUR8TfQBYhJMlmYHdywH9bf/O7kUXR5Vz8lHcJRHkKe8yKs91lDx2TjBSmi
	j9A9bU5x3ZJCdFdA/Novmuc8HvLteUma6JDIRo87GuGfaG1cZgcpnidugpjJKoNKkwT
	W8w5mc1DkIjuPUEMTdI6FvjfW7oVkvn4fkfppQOk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654766699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bJb7gA2craCewAd+gp0+LL6VO2f4UKCldehiiev+4Pk=;
	b=gRIdHID3cd/idsZWMW6xkdElqAlWssVNKKrczhhGd5XqMT4WvB1rosOI2HJrbq8l
	yCC4v7ltSRqqAIBbOEbuPyyeqFGs8hED+RiuXY4gmF048anXrfcYV1Tb4HbZ8DnOHPy
	O1Rc9xQBN7DJjOUkqixBkKNWYBRbI41Plbq0fLAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018147c802fe-5e47b8b5-ecda-4ee3-a9f5-309b9bfa2028-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfd3ef63de51ca7023ba4f3821651793330c01867ac341a715f051dc56b2e7b1
Date: Thu, 9 Jun 2022 09:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654766699
