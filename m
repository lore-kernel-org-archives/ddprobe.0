Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7CB7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659373852;
	h=To:Subject:From:Message-Id:Date;
	bh=1rKAu7TO0JaAEoGrOXoh8MxXbn5CUcafFhpNL0p941o=;
	b=kwa1yMnIFfaSt7GPcCShEikbzDcGjpZABcCx/jDiEMLCOAES5vZ8fWaNPpYhTKMe
	0C/7i3ueUzPvONvu06OZYDyNjBD/FVes34Aav5cqhF5zoxYGjJWH2QYfZ5X3VdhaL++
	0JyL6tlJHQnN3QZwAS21rx6fxasV7jOyH1fHMG7g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659373852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1rKAu7TO0JaAEoGrOXoh8MxXbn5CUcafFhpNL0p941o=;
	b=Vhw+OaUjAGXuQq9CQH38V5SzQrur2s6VRvq+4kuKkR2T0ctWesqyTPFSOdRWhCbt
	GtGsBCwxG2Aap/0LPCG78eUWknJyhGZPz5L5mpt7hjIiafHN2sBw3xYP8x7dEZJJhvK
	S5bUiQfKpU+gz5tsAs5fRLPI63yuyAvE8ZxQHt58=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825a63975e-85a79664-24fa-427b-91dd-945401162e95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7fb812e3e7ebce3d18c2ae622400af796b1b4d6f638a8eec221fed3e4a133ba9
Date: Mon, 1 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659373852
