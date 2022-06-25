Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED01B29A2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 23:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656198412;
	h=To:Subject:From:Message-Id:Date;
	bh=3QknjPcs38ucuRT8zU3XtcZYElq4RSZsBenc3JgPe1s=;
	b=Her1Eonibg7Plk3eBRmUXazIcoTKMeFC0QUhBmIdFtyHARZtCstZdD75zVjJB7YB
	dR/em4s8Q+boEr5/NzvovppovuMxWmp8GorJ2g+m99sN8VW/KGhpAhmRQcCraHtdZEn
	4DQn6xbFPHZA4Ieb0Ly82OY/HAe4N5du2g2l7/CQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656198412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3QknjPcs38ucuRT8zU3XtcZYElq4RSZsBenc3JgPe1s=;
	b=AFv+/eLN+60+bKT1fGOkKGmSerD/dHU3u/EVKvn5fZJmarren/27CVU6sS76Od7b
	yAdoXUn0pQ5uNXGi5zw98bDYrFDqqfOxbjfA3M5Cs10YFnuPyCxX8KUubeeD5HsfPpg
	eRVOkxd8b2JLkXGYuW49t/ZBCfJmN/JBlgMxrNy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819d1e3809-3bad39ca-8f32-43b0-b9c8-847e9c1e59ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1af6ec8d6e3a21c548739b6ac3de6e524b38226cbc41d99f8af7d0edd7b88d41
Date: Sat, 25 Jun 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656198412
