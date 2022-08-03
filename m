Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5159262C
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659522052;
	h=To:Subject:From:Message-Id:Date;
	bh=jSAKv1IQxB+vV2hQBXyto0dmL1Ro0uQ2u8muyKx8Z9U=;
	b=j8uJUpLsln9lEDN9+wnsmzUa3bP4rud+ZptCIXrHe7+7l9wGjNRAn1d+wsWNpHxb
	Vj0iQIJ9J3bXmRusCttH9BiTU3x/4Szw4+/VlDd5iJGkzP7Gg7Z6eJj6RHThwnJS/Q8
	466C8oh1KJOP4RveyakQi6NqoVH0RApG+sErFcTA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659522052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jSAKv1IQxB+vV2hQBXyto0dmL1Ro0uQ2u8muyKx8Z9U=;
	b=eapP1YMtSzxax/SO2/K37Xachkv8kHQ12wvazVWReGx+DYCZ82+5mEtR6SpsziQt
	z4nKHjpgqZaGXh27hYD6XoZU5loYSvqZ9SXXA3WQU9ROl5e5PoPzmEQvxYY5AKCqML8
	5L1yMBUdYXPQUsNkYaiJm+hv4Bsn/izZ/J5/oZvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826338f1b3-441aac24-3030-463a-a882-cac2dc69ae5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9f77b9121322becc4e0e3c22f6b880ea9886fe32d22c965290a348e48c9e1b2
Date: Wed, 3 Aug 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659522052
