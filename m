Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E717A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658070412;
	h=To:Subject:From:Message-Id:Date;
	bh=3OybqQBQXg0Mm+KTAqFq8Xz7Kiy33oIgw6j70ZKS1j8=;
	b=AlDT1fHB7vnhi4IjdOeGP7AD4mUDlKLzYLsNFtuJKAZCIMxsMGYNnRtW2m3DwCCZ
	re0pBgRj6AkbfDTQYfDuoV+S60rkCQV8rJ6VQioVqfh3K3wgRVTArAKu7ZRpPcYjO7a
	SUlwLDT2egdMOeyAaCyEHERHz5xR7plhWShhO7Gk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658070412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3OybqQBQXg0Mm+KTAqFq8Xz7Kiy33oIgw6j70ZKS1j8=;
	b=GKz2IP1yjS5iNLvlZ5z7VU0hVEYFThdb0nDoYuFaEbEPVCYRiAXknI5122fJAd/y
	VNhAfIHfIZkhL6jmnPzpHrw+PTTDrvuqFyFRkKz4sMDQk/2JoBut6fZVyhK1DASsw0E
	fVxCkcg9GxLdJMAAj5b4UlX5ngQKgt1OYUithPXE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820cb2ac84-66a734c4-5e4c-4b7f-a8b9-b12711a97cfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3fca31bf413f589582a6472fcfab695ecc08712b9d27cb94982515dc1306843
Date: Sun, 17 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658070412
