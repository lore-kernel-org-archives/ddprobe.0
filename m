Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECCAF17C2
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 09:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653816599;
	h=To:Subject:From:Message-Id:Date;
	bh=+UkA9GFoxCGu2IbxJP2ko3WG7d41ivdtI49BFKgz3HM=;
	b=NAPSqHUMWH3jn9OYVpqr5k54GnRIPhQuEvdhha/EeJiGxGiSwMbMbLtsMh/5xucB
	Qra59eP1uNav9LGBmxN2/7qWFYj2F5+Of8e2plpjtb0MZKISw/q4HfoJwk+d/aoEo6B
	xP07876KC795+v6ivdKSD+SGlHzMKWUlpkgyL7PA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653816599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+UkA9GFoxCGu2IbxJP2ko3WG7d41ivdtI49BFKgz3HM=;
	b=CNlfVOJFli0zXyGA1IoRt9JZMXqt1uEaV1ynF9oeHaa99G73iBvrHLVi1mQTbxQC
	nXDCeT9yTuqihpkklKPLSh0HBRCH+WODhTF/w3PLmoBojMf7PKfa3aKzx1WVFHpIkJG
	uhULtXdgwKjTJnBjMwKz2unoz2VGqXfvOiQ6JoT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810f26a326-3f01a1d5-a97a-4150-98d8-56826d248851-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb11aaf882e0ebc61369d82b5fa21254ca06f9016dafb3d607631f1247e4e216
Date: Sun, 29 May 2022 09:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653816599
