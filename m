Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3716A20E0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657872412;
	h=To:Subject:From:Message-Id:Date;
	bh=rENEHvb4FJf+NO+VfIZbYNMXTFwwgYlDbFcin+vjExk=;
	b=YT9iXYK0H6iEjBhPNfNFt1tpfewgmIQYHSAjhhOjZ98IxBzGBm6ywXW+R5hGNXmZ
	eYLbbYbu2ZzPlKuygESN9V7JTAjNL+TVHfFA065BpRq3zu5AACmYzKi7GpKCbhvvSFq
	Yt4LmcfXm3ubIb80yWzOcV+Hp4M+qdxWJ/n1b7yw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657872412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rENEHvb4FJf+NO+VfIZbYNMXTFwwgYlDbFcin+vjExk=;
	b=egJoAtlixjrUvch2hXbK8vFWoRoXRNiJ1Un7/BuCFF5WpvUyWhTYMt83Me+hypUg
	vsFAuIggq6O+7Rh60YtBuySadrnWXnhS6odKoPIVrDwkZQ3NJ0eZ3hgtERwTlvVY+vw
	49snMIyGQ+e1D6LUiyNegvC3BjK7IHdnPukY0iUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018200e56edf-668e6642-189b-4215-b255-b30b5c221997-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9edff94f882764586d3c8ffc9cd0b87a83a6a7fb7a8d9fc2c082a08908bd0439
Date: Fri, 15 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657872412
