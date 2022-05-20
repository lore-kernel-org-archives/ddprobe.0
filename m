Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03FC7A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 13:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653053099;
	h=To:Subject:From:Message-Id:Date;
	bh=tnru4+e9DCBKcfrh+NU2HwygrYowDYVba9yWm6aODOc=;
	b=Bp5pkaQx8YkiYAVQvh0JqHrctqtB+Av6h3gDsBPfio6nfzV2RIQH/+dd3E44BXxF
	09f/KlFyKB72hpbt0/SrgtIfVDaOrwS0QLUsDwyeDfh/Dx1u5FeOQxyyA1+P+YE5v2A
	+PLmOR23lQghNyAKkZCKY7jdXq0ws38bd0jZc9GA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653053099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tnru4+e9DCBKcfrh+NU2HwygrYowDYVba9yWm6aODOc=;
	b=FlwypO/j1o73eckxU4ZdISw/DBdn1VgMOxgtZevwvC8aMP7iT60gukg8xJPXSOhq
	IQAQKVKTZ2PKtwEPXkyvXxWtpEqRybfJwpKfEJ90Tepf1wSEkbqNB5bzdRqaPMTzNP8
	4euXwdkMwoKrWNelEc43NdpJ/CGWSTFw3uEZ0xc8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e1a48cc0-1f48913c-e8cc-4626-916a-5d556f6e1b15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 047081ab3be9c85e203a84770ab6ac0ae101022cd36a5352053755e8db2578b9
Date: Fri, 20 May 2022 13:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653053099
