Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BEE7F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 18:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654624979;
	h=To:Subject:From:Message-Id:Date;
	bh=Bcre6MLw74F5NqfbucmyFQQ3dNCyWdk01xfWoVc7SWY=;
	b=knBsCNraoPmFjMu/WuOc/UllS13T219sQnIixfVNPxbY3KNovdKBi5TVvPJoePew
	JHNjh3rewplNF2aovvaB+jMMZFUK49inS4YZBK9YqYVCEm7Yk58uwdItxckZ0j8SdSh
	maSbhl8gFL5FQBO1QIus0I4cta1jBaMnY9LlLfuo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654624979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bcre6MLw74F5NqfbucmyFQQ3dNCyWdk01xfWoVc7SWY=;
	b=WdBjv2TpID8gTKiguRblh+CQGWbXRBclTAQAdlvyq3D4YuuJnTVZg5GvyO+Wg6Cs
	TnLgWdN09nc/ES5YkRAVkTyAJ4zs8mxHXm/lLwODEtGMFEdkmx3jKefnDEkw4TEpwLS
	qa+2lPbTk3Q2xrbY+z4xCEJnRKxsgaJz/GsPTUH0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813f55893f-09838c76-147a-4d7c-b4a5-a197231e40e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e440c2014bc24a77d6f3618671418ec7183cd5d3987b6e19e9ace68df0e305ab
Date: Tue, 7 Jun 2022 18:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654624979
