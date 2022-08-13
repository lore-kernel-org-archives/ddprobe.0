Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6697E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660374053;
	h=To:Subject:From:Message-Id:Date;
	bh=RLHiUoH+PJqEoHsOr2Sz47DlazPlAquAqXtDguCWaCo=;
	b=eAyVr9E+JglzkotxPgKySuDjBicGK2srJvalxsWfjT4qGurpPVm0GT/WwRcWvmEz
	I8oPWV48fZ8OFK+Kh66ECN+p/dvPnIdK5tiWk373czJiSMZyc4qPTe/ZrpezI+qjXls
	O8yw85hsw3So8RZk6lcWpdmRGmvNqtzsWj2jdlK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660374053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RLHiUoH+PJqEoHsOr2Sz47DlazPlAquAqXtDguCWaCo=;
	b=RTK/t9yc7X++nEpLwCLIl0VKotOtzMeXOu0j4FDUS5ytCTziL/CXFg50s6dvlvD3
	aZ9hyfp3tDn2nZwt9W2ujOeY4Cpu0o5gzbowCq4ObU4R0m2DA/9xVUY5pp6YvIxzqwg
	AHjcU0e2ocdzRJ/BXX6hQWVH9/FWCklBNU56ATI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018296016eaf-44f5e5f8-446c-4f9c-8e2d-b4a26c65f219-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4962806715395ba2077aae09d0468d17e87d9adf4f045be1262751b73cac27a2
Date: Sat, 13 Aug 2022 07:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660374052
