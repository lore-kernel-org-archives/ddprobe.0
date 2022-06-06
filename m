Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF6B7E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 13:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654521659;
	h=To:Subject:From:Message-Id:Date;
	bh=PDq2Y00jf7cKKGe//HsrXudH6Lu6pIkGuuxGUlTPDi8=;
	b=Rg1Ep/tioc+nv/Me/F0jl4Lpjs6bvH6e2hVwLHJq5u1hnHbLC4UO/PVqbODziX1A
	jJFDZzvgjnuG/H6x8YOg1QkTGEAaxlcu9DRqOTSPSPDQ4vjCed4WgvwxODA0wWQTHa5
	ukJB/7dtFv9+MPRhQHeOvYhCFI4rre/tyq05KPSA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654521659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PDq2Y00jf7cKKGe//HsrXudH6Lu6pIkGuuxGUlTPDi8=;
	b=ExhkoIv/k/Es/zfAYs8QDgZwf5DZiNsK6+FWhpYq+7mewExkss2+Whu6fbmpbDVd
	zSOsEBPq92VQqRYT6sVFyQqN5H+fDLxviLW+txRNt2hg90UZGbyXHqfuxwkACwF0Ord
	JbwYNxq2PCWeTqFwoZYMYh+y9w22MlIk3fGzsk94=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181392cff97-3a4e5f61-e3c4-44bb-a4f2-209fde2d3dec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e1b3ddc4d38b9884d8189a418660289218173f9aa5485e0091b207fd1e0e6a6
Date: Mon, 6 Jun 2022 13:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654521659
