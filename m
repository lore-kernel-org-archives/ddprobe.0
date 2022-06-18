Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F3A7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 18:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655575619;
	h=To:Subject:From:Message-Id:Date;
	bh=V+CGhWkQ67k+NikoUzreU/w4jM2Sso39wbbWje+hO3k=;
	b=HxNApf9XgCcfTmRb97A7ziqQVmNPl3SQog0FrI/cZur9b9MHWNW4KAbG18/Fhf1f
	HZf67hghYySnhXT17UHwwnlHG1yqaos75hbJD1vSqAicmI7IoP+WJZWAqj3+kWSYTpL
	HiN2ByQHJFhPghibE9PrkvkDuwOknOjE6FJaGfak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655575619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V+CGhWkQ67k+NikoUzreU/w4jM2Sso39wbbWje+hO3k=;
	b=RkfqtxSDGUOpjq1XEc8jJCejJeGKr4lmdqhHdvDnsiiYPUL32djto76UYrrVby5V
	Ow2VbC1TQl67JOEjhHdwpJRIZo6+gM1RlCvSSA0DRlON85LJWuay3+2KCw1OdehBC0m
	LGVQovG5+H6b6NibZI9KIevm66rdFvy/sAWm4wZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018177ff26ac-e7188e8e-fc63-4218-99ea-78c45454c20e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0418b12787e1bfae5706b012b61fc6217b1f427103583352d18ea805d37104dc
Date: Sat, 18 Jun 2022 18:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655575619
