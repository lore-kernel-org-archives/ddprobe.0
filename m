Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B07320B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 22:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655505419;
	h=To:Subject:From:Message-Id:Date;
	bh=YdqltEdH/JjqeSwGo1kBG3F5k4VWigvJCnaneL7D0kI=;
	b=eea1g6NG4wjsKskGsrC44SauJKX3/l4X3F3Xu4JVvQirAlAuyUzGPsWFPdCUfDJv
	3n/WT/RQNVJXsfNPrFjZDOE+TYPpvUpgLn1ZEEKoOP/Ynm8E5hSWZlYTC9baf4m3Ckj
	hAvHQEIu44WO/ao4HAWOJeS/83mtBVhNN7RlRs1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655505419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YdqltEdH/JjqeSwGo1kBG3F5k4VWigvJCnaneL7D0kI=;
	b=ExZf2nJtUQ/e0wRUoeuXRs0/mb/yq5/3OyhSWggbK87I7n0CTEPooSMb6P9+V5WN
	yOh/qghV3xGXdXEHILHIagdlYWjFr68qOapc5qzEsXlwtBcB5ZA9oiKW3mwzwBpF8kL
	GMQNZMoxjWXDWHC5UW1Y0DjbVMu01u5NlMMIkgwc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018173cffbda-930abd0c-c295-4c2f-8033-53d7cc569e43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42241e0bcf1147aab58540ec582cc9b7ea57073c0b7d046ba8b6d85f20c4cc56
Date: Fri, 17 Jun 2022 22:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655505419
