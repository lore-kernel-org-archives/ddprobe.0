Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1324010F2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 00:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655943479;
	h=To:Subject:From:Message-Id:Date;
	bh=5FKIncLe5/7e/UhmEQlMUoMC1FIVleKkCCUw4lpVim0=;
	b=celX6OvUxWTEYyf1Y+ONDdGB+CphAInNAzUTbph4UONwpoXQmmXbtCuEA0Ia7Up4
	+WxJPTsX/KYDKu4IbSuKD8aUMO6id1nhYk1Jqim0uZyEFay/vj2KQ+WbtBF4n2amcJK
	67m/K9hg2blznkaTfYSgmxR4ZU/Lx4mskWD5UjKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655943479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5FKIncLe5/7e/UhmEQlMUoMC1FIVleKkCCUw4lpVim0=;
	b=C06ReML9CMQHb3AChGFx6p7K0mAN1qh+86OzninMsCCI4n6Hg23oQ1Ll1J+lyoWq
	9JUZOl8DiaAlg2MjiYg4Tc3+Aqd8fO/3i069964pxGJcbKISRHjg7BXV0qY4Xh92Kwa
	NYnVEJUybxqxsvvyHfBtU5jV/i1aOCQHsU0IGIXI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818dec3fe9-7b216d12-f9fe-4846-9e6c-8ea31faa3770-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2b94950e875f1a23f3717e3b20145c3ab945fc9d7bf7f373ba235b5f0824b9f
Date: Thu, 23 Jun 2022 00:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655943479
