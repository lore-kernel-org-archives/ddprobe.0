Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1807015DE
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 08:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656923212;
	h=To:Subject:From:Message-Id:Date;
	bh=gtlTd4OwJJ9c8MAxBXS9D7KNAeoyFtRHFGbll0ol8jI=;
	b=LZ2h1buJymEAWmGe2VK+7IBWhIzwvpQ/Gqy/BYdK67Mtj8nYdbrSxA5qZmmmzQFY
	lkE0Y2jg3Bs/tOmhRhbZ1feuwK3wdfCVsrmkv9psxOSiYJwecUz8OycKWfAjtq2UTr8
	4gjmMLPLaMSFykCS6Uw84KMmsjsfOIk1ktVii1/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656923212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gtlTd4OwJJ9c8MAxBXS9D7KNAeoyFtRHFGbll0ol8jI=;
	b=GleCZTU8C7xi7IPuRpKowH0lHS6AqmmToWKDojpXjZoQFSi3aTFnFp3IRUs9+cJa
	XPYxpeOwc12ecOhfIaeg25ORwSEmeZaSstCZBatblhalvfRoFIE+IPMDOVqPxWARkNu
	YgDRY0OWeAKieErG10e6ZQ41EjPgbh4ByNsCYMGg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c851c9f6-eeacb600-f365-4c3c-b346-d20ba7bf9cf7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4749036c873d663345787d5282f5d5f6a941e1247b67021df08fc21f0b3da21
Date: Mon, 4 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656923212
