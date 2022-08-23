Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47296256E
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661260252;
	h=To:Subject:From:Message-Id:Date;
	bh=4I9gGU2esbgZQzQObX6NQb4DFmIXLki7lVJdl8aGv34=;
	b=JHOCOTrgvS0DAl6oR3f1d4XZkPq6zfbeUVB7ZQVcauNqAK78sUGPN1OxZJWqLTX/
	AUz68cM3S6QpOfer9RDr+fx7sE6w3P7/tJoj+JPLme37lpyfgHqOThjF3TAs3lZpJru
	Q8Js/EvwslwPMf2bAQnq+J52dz6cJiR9FPFGe9nw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661260252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4I9gGU2esbgZQzQObX6NQb4DFmIXLki7lVJdl8aGv34=;
	b=QNBvcFlk63Pa6RElZhnNlOy9091mTK91eg2TzutNkHN9VQe8qj6c2lZPN2ig9/fp
	dLIiP7ZyA81Dj7aIk/3WCsHRGuvKXT3nCMh15Dp4bqhSewwXvSPMet3CAhDQI9tAdBh
	Qs3u9VqY2JPkSERc3Gh9fP/t2QdHJGbeC9mtmwS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cad3c573-d8702da8-884e-47f2-a090-8900bbcead9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14b934afa9b8b57009832e9f375062fcd7639fe5b8c7dc3a21a3420d346b8f73
Date: Tue, 23 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661260252
