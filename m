Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EC62F35
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659645052;
	h=To:Subject:From:Message-Id:Date;
	bh=TRiAJZAF08JhbfAM09owGxV3sNEQOSiS/hGrv6FnwK0=;
	b=VZoPVyBwSwerZdA980KSVA0nNs4SGyBnuz4d+A4v58wZgzIZ78d5wXoQ2Sv6ttOn
	ktoF2h6RMxeMm5TyGKKc7DJL9BwV9y6JgTpZw5bfUBN6RmzXUsUCthz4/uzC4ef1d7W
	gBnqQ6UgYbS4WV56fzUf7I9AY1bA+M1Lt6XbHa04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659645052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TRiAJZAF08JhbfAM09owGxV3sNEQOSiS/hGrv6FnwK0=;
	b=fhoN/fiOJbEAd/P9auj2w3xfZIiCzJ0cuDbEHBioK1j47DCIzYtoyVd9Zj+Xr+f9
	gF7nQujXZ4bfjpUHCzb1dh6U7Z1uyljAyR50T3OJAtl7YFJ1z/U2873ezyYAscIszrn
	dCAx5phMApvkwVYFaGz8tAw1MouLHORtuwvxhdmI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826a8dc6c6-017e678d-0d42-4b2c-8c18-44ca711fc8d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4714286a9c9ece45aeca6da3ad1c00e744f84889747eb074b7a5322c891013e9
Date: Thu, 4 Aug 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659645052
