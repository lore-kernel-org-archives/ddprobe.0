Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8B0747E
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 22:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658355412;
	h=To:Subject:From:Message-Id:Date;
	bh=87G6liraKSDQZpeq3j4gMGLK5nv/Q72hbXWSk5Dvgfg=;
	b=cZUUqQb/ZpsPGKs76lrCQpjtWbDWurtDkqhZyNvlWUDIyxfcqkdHHPWMzFno0zB8
	16mZzc9Z/JrMHXwVkQqSI0/S6znC39w8Ek63h+SPyVsZaHVXVcjXFGVtarnqQl7HpKN
	ZRFSgmbqfiu9WDnDuUcLRgHT1bjP5WqSdsHlW8lU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658355412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=87G6liraKSDQZpeq3j4gMGLK5nv/Q72hbXWSk5Dvgfg=;
	b=S1KVD2qKxUW/j52O0SakKcMH9nUR3La3ED6K798LmuxJ/fxIk0DQEGTCNCF0ggXj
	kVqekaHDqSqNdKCws5V2zOP1r1jC1dYoxOgzSu8zrecytUiDp6ReEUZM6aoFszi9I1/
	pGrQLa1IoDYKr0IpySFN7TRgQwBlX2e4JiMFcDwU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821daf6d30-ff810f6b-a3b5-46ed-91c5-2e5b013f365e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b0e1b5a02d61e3ba0f146405b411caa6fbfb24b0ec2708ee91242a3a5ff1f1a
Date: Wed, 20 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658355412
