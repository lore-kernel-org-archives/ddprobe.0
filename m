Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022417A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 09:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650794218;
	h=To:Subject:From:Message-Id:Date;
	bh=ksK2BCkpe7ieD+NICbYLy3BxQjyJDwHpYLNaVq8YaOM=;
	b=CG/ADF3jwKC9FdCrHTrZ2Ljf7vuZtLtRMhRr5Ij8rtEBT3CwzgDyXqkXZOu5Upfm
	/Jppnj7l+VXa3NNKr6oORSqZvmKuRaDCBlqPwwNSBOd02LJEENQR1Td9tzzpbeRHnR9
	zZh0d8mGx21QxAXamY3x4jPgSZbdhEOspC5fKHcw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650794218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ksK2BCkpe7ieD+NICbYLy3BxQjyJDwHpYLNaVq8YaOM=;
	b=fCAZakKaGu/w/eTwTjr59d7l4rrCUri39k5mkRT9O7eRWGUKNCSAxKluVtlxbmjT
	kp2jzYizVXVG5xf3zlPeISs1djFuSeYM2HUdfF6zGdHD8zn08GF45eGsPXrZZ7vd3Hu
	26ZbRr89iqI7IaQVNjOA/tuxSIRN6Eh/fz1hf6yE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805b00c336-ce07ff8d-c2b3-4efc-ad2b-bab9dd7c6bb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48242d9c2aeef8dfc3600c24312f88e92a3c0f6ecb0beb2bd21297a25cef9d43
Date: Sun, 24 Apr 2022 09:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650794218
