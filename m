Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFD07C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 05:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657170412;
	h=To:Subject:From:Message-Id:Date;
	bh=P+WjjabV4sInSos7mklKg5e1tO3P9S8jab+qsHSALFE=;
	b=XlWTNky5S3nrqfw/323Ek5b3G80IGeTr/51WGPb0TeRqlNmucS2Q2zeLSE8FHMLc
	pYjIytTBaJwI8b7gXwfQfFS6LYc201vEd+4aJVpSrqWVg0mm3YNe2djQ3Fe3eOANsgq
	X6mckaeu73Dbly9Fh5h5Wie+tJkC8WEPNcjdIIn4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657170412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P+WjjabV4sInSos7mklKg5e1tO3P9S8jab+qsHSALFE=;
	b=VgvU8sZa20i4NJh4JwHg+tQO+IV3njAw600Ri3J+hrP1kU6sETR/Tc0MIhZM6wx0
	kOl7sRnDvWkvAjFtweg3nrgUyEvCAEcF06alk+ld8lVTf/EwDTU96LxYLgCs4mGPCZL
	rh+x/w2UMqZCfX0udsxXY7WUs28i0gjkyBcDEXBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d70dc331-8a5300c4-6eb6-4af1-af30-0389eb236878-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48855986b6c89b5ed3c2b001a36fa8211a660bc67ff6e95542fe6ccaf7c083f4
Date: Thu, 7 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657170412
