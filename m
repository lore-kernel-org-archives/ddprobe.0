Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F303211
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659557453;
	h=To:Subject:From:Message-Id:Date;
	bh=70ZRyGbtcHilQAhRRggPGhv6F2Q6g4xHCVCAXJ+BYQ4=;
	b=PFaHmlboXTJdx8Mf2JGdIz9429yyCxycJY16TaoWOrF5ijXQbFHU60Jo4AXKtpae
	PAt4HMfJHeSpf/w34SJh8D+TGJ333e/UoIPN51dWEX6Fr604r+K4NhkmdXLuTqAebgS
	GPjkou+UNLa5eEEJd9T1D12CLk4mWrFkJ1Vg79cA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659557453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=70ZRyGbtcHilQAhRRggPGhv6F2Q6g4xHCVCAXJ+BYQ4=;
	b=WXCNAjHBvvAtUHralOpB+9AK1mURwiJwj2CCS4MwiDHX3KYqm5WhNDwzdqcik/T4
	+DG90eM7aJZc5airoOgAg3HSPfWG0A/VtOdtZzR5/JV9AKvwA6pp0RdrUGvoD6ysGXQ
	ZPeb6FA4QAHUGAjokYXbo/AGwlZhT37NwB+cGRO4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018265551afb-46c37f6b-d40f-4983-8c86-da4e201272dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fdabe5be5b09e1f7a4ca9695cb21c35e4fd2fd0457772e33e82718fe7250975
Date: Wed, 3 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659557452
