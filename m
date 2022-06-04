Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5AD7E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 20:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654375679;
	h=To:Subject:From:Message-Id:Date;
	bh=RmvNXA1zGb/zkAtAkh9zdiOqdeKSedCU1xKqnMJoah0=;
	b=Ks0RfjGA8ZdT6PMXpXg+g1e8ScVDrL9JXSLz1DKLB8z8SKAtloa0pjLfzXHgwVZT
	DByECZI+u2DdMM+XscqkMMmRd1MZ0F1B4Iuly7UjL0/DHfv139rw8kRsdafYm8tqDh3
	iq91IvY7pXqXL7ydnwAFum8OkcFL7dTvwx04eTdw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654375679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RmvNXA1zGb/zkAtAkh9zdiOqdeKSedCU1xKqnMJoah0=;
	b=a1guhRwMf3TmUdxGcscPgZJcxL1GVh9GzzvEniY5lhbV1Y+ttZ+diqRmvhzY9thP
	FvYrfRBWpD9aXYuABu0vuYV20nhUdP35eL+mE4h/tmgODLn4/Kxf+HeV14pxp9iqk/D
	Bgq9agzhoBtzo/rRZVzslBm9rZmq+7VM7cnnCqxA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181307984fd-ec2b67a8-a5f2-4581-b4d4-e70433b1331e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bce6a19d4e17e23814b1a4296bbcd7740a7ac4ba254adee7c42f1d579ef3188c
Date: Sat, 4 Jun 2022 20:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654375679
