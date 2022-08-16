Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4475F3C0C
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660650052;
	h=To:Subject:From:Message-Id:Date;
	bh=FLnlk84Mgoz6rfcsBElKiQV6RsPA3AU1hTFyi/ULL3w=;
	b=PCBZuSyhsZgHCJop+KnIETXkiqltQm7CVN6O+wu4b2QJf1dKemTs4m+6DHhm9NIi
	wVO7AL+cFFxG5M++mM0UvYU1E5A+ds+VoLNRvPgPEDOBjNUOKHUwP0sylA++6OQngTv
	An1jwInS95xcyGXibxFhpETi0tPJShsP2NuV58dM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660650052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FLnlk84Mgoz6rfcsBElKiQV6RsPA3AU1hTFyi/ULL3w=;
	b=P13UrX5Yc7fs0p6xA+fwrKQyAbTE8NNIIJDGgEl+DAR3lhvTVb8YADBHpdQbN9aA
	tXUZocot3jJgqSnHWjycMPSKlLxzzXqx6ENVc3CCGOfhsjmRrvlP/zi7i69bhkDRvT8
	wbVvjjfU9Vt4t5WR2MCwo6MaC5819Ia2qNjtH6PU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a674dbd7-9650c9b6-3070-4293-9231-42068f836aea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78330522d35cbd7118cb4d5b5b61d79d1218b3388f3f17710e67b463f63d48c6
Date: Tue, 16 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660650052
