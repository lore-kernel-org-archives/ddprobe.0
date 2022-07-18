Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D342F24
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 18:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658170013;
	h=To:Subject:From:Message-Id:Date;
	bh=TIvkYBQD64pfQ9QaH/pnX2JEFTVEdktoKU65hT6beio=;
	b=K+VXorgdhufsBAWECYxhsXagykBSJu3j4u+lkV9fsa0GAIUt35hKmRwdzHOebnnE
	2bqq/N2peS3HfX6+pvFM+ft5n13H+9hyR9NdSmwqT9/AmQydea8+m671VRiV4U0+Xbq
	yzRvKibxuLKAVMB+98+f4Lpu1bMvYRbH6K2yGZ54=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658170013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TIvkYBQD64pfQ9QaH/pnX2JEFTVEdktoKU65hT6beio=;
	b=dOY1Pd/fXXld8D9caZDOsjp3n4Sa0cl/WlHojFQxnZ3x8zJ1JQGnQtrGRVyrzS7X
	HMaveGkrA3x7kQtX0mbFed83ejyBXj3K1dwIMa6pz0rSOvbpelFgxwa9Q0q8u1Cn0la
	lJ15stlhVniJz4/OcjxNVJL1Nf62CyT2NZtTGHBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018212a272eb-3823d768-ea79-421d-8e93-69e2575f9553-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b753e2499d6cc47e169accd238774adf9eaf587ab3a4bff34b0f171099e16954
Date: Mon, 18 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658170012
