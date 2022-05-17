Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4707F
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 07:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652771999;
	h=To:Subject:From:Message-Id:Date;
	bh=6sBLPFc6m67KZdIcsl4iFNmGW/w5qiBFOe0ZKehCMKo=;
	b=QtPMrILV+yAHo5ga9MqLrWUiRynzYGkZ0SzTI/DUKyyfMhW//5hQ6N+JypRJnDMj
	Xlgs59tTc4mvNfJPq/XsZd1MVpdfI+VQxRw/Hk2ImHfGAN1e8t00sZxULIaFpan+qy/
	K19AWClVbu0kR55Zus/0az1yg5wgVb/SgjZ5b5L8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652771999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6sBLPFc6m67KZdIcsl4iFNmGW/w5qiBFOe0ZKehCMKo=;
	b=ZRxjxJ42StPtG0yL5tSg7igj1Tx6QtVjtE9F6vyL+mRvRCObJzQA1xUaw+uxxZAz
	yDsMl4uwk4eXFz6fNQliVRfT775oaUUTyQJT/Nab2Qry/IXxD3c5Ouqmb1gBDw9MP1d
	8TDg4YJ1LsfMIGepMoPmJvlF2uU3LplwTwhV4Pyw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d0e34e2e-fa05236c-4dcd-40a8-93c5-f80af7523ea8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4cfe285927be6983c7c12f7fd9d4059d06b56718026b3d213566d9e72ae73a5
Date: Tue, 17 May 2022 07:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652771999
