Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6A0368
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 02:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657159612;
	h=To:Subject:From:Message-Id:Date;
	bh=/2qyd63ubyDH2Yck1BX+QnigOfaEOHW4bgbmEbnelcA=;
	b=bSA3Pgtd4SqQefaZHC4CE9Q5xS2NSLOMNcdrY/UHsRmg7NcBW6VYC8UAPRHhTaVi
	8BtyW/sqgDfLdFXgP24Gggttss9eudE+Sm1VOrCJ0vI3hzSzFlY5NzueuG74KMTb891
	IffVYbICWhZPEmm/+L/kQO0p/muUFVAHxqLoXdAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657159612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/2qyd63ubyDH2Yck1BX+QnigOfaEOHW4bgbmEbnelcA=;
	b=bIHizPeeYxKJWDLhwzBg1legTrcoyAct3kEhX0QXygZn9bGtdf3t/IWIeWeP6XxH
	4CtyyOGvTa5f2mNrh2rj6f2JRctbWGl1sDkinDuIsQ1TIoiPxNdUua6vg/TNI3U5sn2
	8vRvHDMoFlFE6O6yLuIAYt65JfQShCUAnjYIIykY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d668f77c-cbb9ec74-9fcb-44e7-8b81-951571cf620b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08c2fe3dcce1e7d1a004700a54c62d55a5450f7ec6a64ae2c66c74d15eff0a09
Date: Thu, 7 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657159612
