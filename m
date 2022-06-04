Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB637E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 13:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654349339;
	h=To:Subject:From:Message-Id:Date;
	bh=LnAr957oYA7VSBJejSxMFHMHZFVcRVGX/+l7jhgykXE=;
	b=jmvnnsSBxtmScO4YjayShotOy2SYQGGPsjTSOSBNyb/GKeGIt2C5K5WUVDvrZBXf
	sMt7aea33GZxaebDP8pVgfMRHWZTCA30Hb8lf+77hNGEwquhQ/3kDGNrcmRVQYCTpKy
	2UtKPzabcQk9qwCJj9R19tRE/9da1PEHZWyUuKLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654349339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LnAr957oYA7VSBJejSxMFHMHZFVcRVGX/+l7jhgykXE=;
	b=SXizNazUUlKAg0otiMCfS9MOXIFxq2hmCDTEKA1OUJ/FwhS0rTvHBXcy4aQqpMW9
	oUMCqBi7C3V+tC9I2B6AHYBK1ZDmozv4SH3gTxfFDGV+p0fNFpKerCh1IQYsJ3T8o0u
	+u4uL+I2jU7rMqgd+4XcPmpcd6RSSFtE4uGBE+DQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812ee79aac-28071222-2b32-4458-a321-629cde9c0975-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a59fe742e7b050b8a22acab1bede0f70e1ae74c51fddf4bca1b740e267bb3f96
Date: Sat, 4 Jun 2022 13:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654349339
