Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF64F7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 07:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655624279;
	h=To:Subject:From:Message-Id:Date;
	bh=clEsKJpCUSMv/ztpk+4lPjUHc4C+BNaa3kv8jvAMTjk=;
	b=MXxBWPDVhFIkCR5BZtzTBr1y0oTFduRScV5eJYzJLb7U6RZGqBqq7EUIMleqDVNJ
	G85c5WrkuWaOAapqaGkQS29Gfa8nrttCocEnmf//QPqz5xDo/CGQOgYFZ5/Qs4XkhbC
	SiJYzCV+qAxCYvf/m/UOI3fDZE8g0r2sW0mr/xYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655624279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=clEsKJpCUSMv/ztpk+4lPjUHc4C+BNaa3kv8jvAMTjk=;
	b=MxApeXb6+FCX5ron5ULVMfh+RQ5/wORzpJlRxmcRnTICyEysrlFFgkts7qj+AI1C
	FkIuiSO2IldSLz3wtx2TR13EvYdnJ+zQdJLv313TMx4Gn90XKdeS2TxxrQ+UGKSY+JH
	1PA0CLB2JBs6q+pg2KHOCzQvsFtncCTYJcQRwzHo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817ae5a4cd-0a2ed9e6-f5b3-435d-8de7-b4187d1d57a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f89d025260c758bd88b1a992bac8edc6baf3943c9a8a8dd33e01632208b2dd77
Date: Sun, 19 Jun 2022 07:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655624279
