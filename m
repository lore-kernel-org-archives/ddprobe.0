Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614AA7EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658887252;
	h=To:Subject:From:Message-Id:Date;
	bh=6qSdoA9aKlqSREXbSk9csvXe5Hxf3lkN8PX+zHCvYYY=;
	b=Cg8zY3nU3aDmBC7qgCk7h7I/Q/+lgdJLrCGQ0d4U8eAAf9aHj5+XzxAJVfecoPlv
	2HK81xev87X6kpZaiMKt0GGPgbjdkjWR7RWwpvGyBMm1GONJgpzqWRR3XYLI0HRd6zJ
	3qg8ChUrQwXiTiiYB/48PuTVzeG29p/edVO7I7h0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658887252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6qSdoA9aKlqSREXbSk9csvXe5Hxf3lkN8PX+zHCvYYY=;
	b=gHnuHBa5u52SM+ERs0qh+Lzherw0XShsykWSdiiBEReciMCbz4SW6xuboaY/+s5Q
	zdA2YqA0xJrsiy98z8uhFnqNjYK5nrK7zcuYtz2CO0CFPYC3Jocpvy/+VysXa+FuW2O
	9I2SsHNB9YtlIfsI9dedln7jfiiZwx1iEymrcEzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823d62aa52-cfa31260-54db-47d9-a3aa-8affef14f7f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fc8db9f3ce5500bd808617709636d3f333a7196c013559bf4b19b38e6b8c279
Date: Wed, 27 Jul 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658887252
