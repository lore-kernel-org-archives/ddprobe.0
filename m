Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704477A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659021652;
	h=To:Subject:From:Message-Id:Date;
	bh=Zkfm7VCfoSPbg8lSdOzFWbf4stggGDsKmBp+0ZkRGtM=;
	b=i21OHnL7zseofkJ4thWXKdG39Ra5yanEr8HPGjWyUg9NiG2Bnfq1Uv3NgtBRDSU3
	45wscIAgNIj+YnhWk+vTolHexYw1l/pQ3ZTb1U751bm0FN181K1kaFxA6MJ561klhQg
	2pYVEXEihTVNtVKeqrXDk42/BJ6tAICKxktcnx2A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659021652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zkfm7VCfoSPbg8lSdOzFWbf4stggGDsKmBp+0ZkRGtM=;
	b=dtiU9ELiwAdQlhGUR+5FfNDtwb1gaGqJLjij3xld2WxQU15vvTWmS0KQZUe3gd6L
	d1iON4XfKCvpgp83d3BL5XJfpgD7T9+6Ci6qWh//t0+OsaseTCcTgrHdjVkyb3Hq1U/
	Ys4QZLx7kseKvZgJI1Hj2XOwlysJB2o6HBNXDLCA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018245657238-4678fc1c-cbf5-411f-a594-76a25bc6746b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c659c5de47d567a6529e4a1b6190b4d402bfce1857667dc83d43ab2cd498c582
Date: Thu, 28 Jul 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659021652
