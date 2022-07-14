Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C98D6035
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 23:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657841812;
	h=To:Subject:From:Message-Id:Date;
	bh=d9Cwez9Q5XvMFrd6nokj/KZiYEVYap3JhLYFy4JrqMY=;
	b=RYhsboebkfELv3o+DDM803D5HCLAhMtJAwbRjcKAsqFkRVI0BGVK9RVfHki4X5zv
	Z9b2QlxRLZAwusFsw0OVVDfnq02Rj2sdCEmrKABaPyoTYcmn7OQNNYO/a4W0/QX9NmQ
	C1qP8dmlA9p9ALP24S3gT3z5jaDi6AW11UXhegXk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657841812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d9Cwez9Q5XvMFrd6nokj/KZiYEVYap3JhLYFy4JrqMY=;
	b=GBX8TCUraqHYqYMHm1FkrKJvq3GdVcHKKS6K/b2ILmsS1pBj6gv7FHv32IJEs0Yr
	5uIY6ZRbz7MdSjIkVftuWUaAzdgeZZjbKZvRkL35QID2VQslq6KxPt2TNz2PGiBMUVD
	fsKwd+1lj1pqgNFxm26kpnUzWTXrjugot1JTBNzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ff128368-963f0e2e-3e4e-440d-acd6-5b16255d0401-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a252a781267a3fa9dc736fbc780cee064719413b115bec36b2c58b4cfbaceea
Date: Thu, 14 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657841812
