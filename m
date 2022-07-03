Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EED1854
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 02:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656816412;
	h=To:Subject:From:Message-Id:Date;
	bh=DKyI/RYD7ftW0V05GheT/DagQHQQq0UrM9O7VFsZ7WU=;
	b=FewEZfahGAdp1jUUYnMFiFMi+UqKeS1ItJu6gtWAPB4Pqil166NrqzuyJ2PWnu4x
	cr3Z1VRpPIfKMX5s/5vTBKt3nZXpLk21fEAEGrVYwJGbJUq7NpBPnphyLTSFeUitxKz
	aO8LPYLgUVc0+/HlcDoOPVeSbHpL4WYa+hWTwgHc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656816412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DKyI/RYD7ftW0V05GheT/DagQHQQq0UrM9O7VFsZ7WU=;
	b=j4rXC0RDOHhMi6+DuyDXqIMw1feyXBPUphwywYsVsoBDXMUr4Pl348wRYr6b0G6B
	Bru0pLv0kPl3/XK4x/xVKeUR+kjOsQhO3LTTmKG7ftDpBjpIuP2Y34/9qLmOvZXeDUg
	SWSz3CrqlEgWh5xdUVgrltPg5aVEBGz3oHyJnAFs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c1f426a3-62d18dd9-0204-4948-8a92-b91f3089f6a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0dd7fdab10a583256fd4fa5971f8a6ee244c7e0c7c0b34d1cf66939b330724e
Date: Sun, 3 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656816412
