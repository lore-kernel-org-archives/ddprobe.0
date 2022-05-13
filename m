Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E38A233D7
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 13:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652450399;
	h=To:Subject:From:Message-Id:Date;
	bh=n2ZlA+bMMSlSLZTu/mXUnmsmKvisRtZQEK1oseJGsug=;
	b=Nx8VKH06DhsDQsUMCk+ZVodvWk4cpzkmk78ip5DsmpD95/m/n8A49JyZfJECy9Ru
	m87Wheb7aeVS9IM14pVdPO0Dm0/KuUYkRSNTyNv57clhC4OgqQgbdISdlE0FqxgRpWU
	1xNxQGeGrM0R4Kz7ttUaPu3eozf6B0BudUPTGbMU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652450399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n2ZlA+bMMSlSLZTu/mXUnmsmKvisRtZQEK1oseJGsug=;
	b=e5dEwkXnEYBXwed21iUkR8cF9B5LiHiBP+Z41iRJJYXTD2oLIUQA7V1llydxR5B/
	7t0rC0GjTwYrSYvg40UCPorRYXS8JH4/c7bjcIoytbtGklSVUfcHXnQq0Rc2i8274pN
	F95+3RaT8kda8UMPvMXpdQHOVQJ2Tuszw5VzGHG0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bdb81415-f8b7e80d-7aa6-47fe-9cfa-e7036728af1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a649693e6975ddf76344a63117d0574a4ad82216f97ff67e7299ac59a6543517
Date: Fri, 13 May 2022 13:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652450399
