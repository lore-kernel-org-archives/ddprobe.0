Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6EE87B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 06:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655618639;
	h=To:Subject:From:Message-Id:Date;
	bh=jD7nyco7rkkLOUzvd/FJ+Y1euAG5EcTdEcmpftibIWY=;
	b=QGeIEzvMoYJI9U780Kjl62OlWCKdfyoNIk8/yD5nO4g6TTvE67K4LqYADqlN7CLE
	H+PGAEfocABR30QZIoh56x0bzAyxFdVUc/YURj6BWEeTM/2W+NiV03DoWfw+B+tGAz0
	oVHQImfKvXNjFZJ1JdRrXPwgoaNzYMDkAiWJKF2Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655618639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jD7nyco7rkkLOUzvd/FJ+Y1euAG5EcTdEcmpftibIWY=;
	b=TIKvxp6ioJ9ZKOJN1DyiUAg0oIKatppPZmMW1pjaCaj6J/HW2MMfe/9hY9CE1889
	OJn/J3ogg0Pviu4g5nCbl6dADJxHBcIgL9Et3Pho+be5ErHvfj45w0PmAxSc9L8zzn2
	GPcfkkNZjnb2WOR6TH0o5TjnaDF3vuMtCX8m8EZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817a8f9597-4513ff84-5e03-4ce1-884a-1cc48cea703a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c0c4d3b0d5b117678f79df48b8a60d8a9cae949b8d0071a1b48e3eadfb39160
Date: Sun, 19 Jun 2022 06:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655618639
