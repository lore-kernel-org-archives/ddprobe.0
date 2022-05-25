Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8C57C
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 19:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653505679;
	h=To:Subject:From:Message-Id:Date;
	bh=RV/OcnVqbsN97bp5E9ZHTpI39kRw2XptnHX+TAMM3XA=;
	b=XP7R06sfyxTz2o+WXdhI7MOzj0g16klwV6N4TQAirandqJolStWTNAfzJ9wvSzWb
	YOJ9wUTwUzts/Jvthclf97oWuSTDX5oqR707ytOMLTSq8FuNClBxP56UHNq18KlXuK1
	GNQ6j0w09TN20tWaIvLL/bBCU6Utg/CW7MdzXdqU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653505679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RV/OcnVqbsN97bp5E9ZHTpI39kRw2XptnHX+TAMM3XA=;
	b=I9AjvQvuKCevbr57ZN86fPf3lrPyXoyGyfqRXSpLOercnWTHWNPZEBJBakOoXAro
	qzfQCrYKF9nN848uO1CcZh3Li+jwnzrb/yY5ymfLgrzxLGxEEhRMUdP3N3o8kwpSay/
	evPvXrZdpZ8KQ7uImTqnuXcZlyD/Xt+zp5IV1gUU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fc9e5f98-228b0199-2017-400b-9452-7d3a03aa3ff3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8b7823aac0664d0fb732ce80d410c950e83e33cad842148e2b2e43de752d2ab
Date: Wed, 25 May 2022 19:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653505679
