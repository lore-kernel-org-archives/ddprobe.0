Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88197E
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 03:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651028998;
	h=To:Subject:From:Message-Id:Date;
	bh=M6w8orDYvekJBIssmwwSfKbiT+SDUxhB3YFeH3Tq6fg=;
	b=OOmKS3zjAI4JYbqiRBR+ergyEyQ7HcXN+5deHfxC8fhwUwp+D7oDvjiJ77hCFl/w
	C2MDTp0U9hwBbd292FvZVaMmP7VW+cRVOHNNKZUW19blSbYdJ7Ery960Ta8aQVTRYhq
	lUZvcWsLTedN3329rvkHuwsSM8ae7OWY3Br0fbWI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651028998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M6w8orDYvekJBIssmwwSfKbiT+SDUxhB3YFeH3Tq6fg=;
	b=CKvGGXCVS284qCGT85j43haXhu2hSuuZSAUBTQF0bT+Ufu4rosDbhGeNk3apqNbC
	MulDVpr9Gp50rvjh9BtNLKu8wcR+jjMcsPQrTkZ2yIN3qL9TTD2Q6b8lCu0FYvrdD4Q
	TYPlQ0GGrqeji35KIgO2gux+V55jWyk+n93GauMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018068ff3863-eb711bc9-0221-4b09-8c80-5e92a82bde4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da6290a05678a02876a6647535437b3eb0eed740b15ecfceb560f8c70459b43b
Date: Wed, 27 Apr 2022 03:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651028998
