Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339D92562
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 15:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654099079;
	h=To:Subject:From:Message-Id:Date;
	bh=aILt0ni5pBpl09G4jaKzQ50wRNB7DyPorIWGTtVEI2o=;
	b=K0QnXuKcTlnEz+qa8Zovyp3yl20+hqecWSz//B+/Mjd4omqHa7WdKWlt0xAFKpdi
	Gjo4Q9Ma8THfV0St+Y7XhsAx6KURTCWQgyfEcvSaAIykICZ4P2VAudf52PmTIxGczuA
	4G5q5G7ujYyWXVj4KnKmIZ3s9Vzq+Ty7CXZnjXqA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654099079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aILt0ni5pBpl09G4jaKzQ50wRNB7DyPorIWGTtVEI2o=;
	b=QxedpLroQn53l9C7yEPYZuDGRFb9+imynodngDGqkNiZWAvJ+RQQa7kWt4ArihEX
	84vLsY4wM2bkHg+XbmCZwoOdQvO/9w8i3MXrjMa9JOrJCvk0YRWdDqi+5r/LGTre8MM
	mQpoFPiUoHxxiIYCanO49mDUi7s9TUoYliWXXeMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811ffcf0a6-176eadde-2c4e-48e6-a729-8abf256b2190-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f98c1584b41a5ab3a6d7fa325379f73e7015e50042cbb7279ca588dfe8e0ff3
Date: Wed, 1 Jun 2022 15:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654099079
