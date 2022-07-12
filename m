Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D16A4414
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657638412;
	h=To:Subject:From:Message-Id:Date;
	bh=Ovvztw5GnDo1GbkSfgCKld3PBCfvm8N5bbj3gLOer9U=;
	b=dDoC8A3yYTL5GdEhCWxN5z5wVlWWx2YrofN34AhYmFJ71Z3LPhV/pAsdNPk3CWhS
	I8tPhOjYRN5AvtHTVkXZVBjvmv8O8l6mxf6cpBzh446Qs1QnxbrIf5M6vhKAaWifpaA
	N3BPDrseGujrV5VY9STvpK4aqrsHBBJe0kB73QII=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657638412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ovvztw5GnDo1GbkSfgCKld3PBCfvm8N5bbj3gLOer9U=;
	b=k4ABUJ+pcnkWEypv7vl3Qkl3bmUEj8luG19ASjEr5s+UKx1E7hAbrVSA/HfC7Drx
	qEn7wkLGD1bFRdbn5NC9U0peVrf+b1HI4T+clU0QQ9VtExNwxIhbQcaO/W41U4y0p50
	TITEKy416BV3Y6rcwD7G894ySLSUJk2Qhlv3FppY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f2f2dfda-7b344df0-08e9-4626-b048-1b559f1bb0ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dd36409a2e648757ddfbe185b3ea8f77fff2866dbf1cbab75965914310231aa
Date: Tue, 12 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657638412
