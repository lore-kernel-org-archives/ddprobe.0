Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D69D38C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646640384;
	h=To:Subject:From:Message-Id:Date;
	bh=MeGAjti9j4Ra7Px4XoS0Tpu/ui1Syrg897snzJ6A7QU=;
	b=gAaE/LWweKGdEDBvbQeNuepjJaiOh2UofdIIo9z+w+mAaebtbiP1JiQJ8koH0gnS
	MZL7Jl8cfvBnD0oNiwoj3uKWOpPo8VJgGbSUTNDLVKW2aSNNsSzQ7ZXWJzYIDkGxBr7
	j+ip97dqhPYiRyVkgLPu1kBPYYVEDjH8ick99elQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646640384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MeGAjti9j4Ra7Px4XoS0Tpu/ui1Syrg897snzJ6A7QU=;
	b=NFMU1Ij0rfNy6tH40guW0WCnN5JXpkYMWSi/HzMih24k28yFDbhFlYTC4nloDk4M
	Cu1zNhE4uj2czknKu9ZfpKPsZfhmxg3NeX1yqaCbKyBy7TpgAI1+zTCE1w+2kpM/KPh
	0eMQix8YhksmhJGcr2qoFKHfDvZrD8d/zOgvwWRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f636a4b1a-ae34a7db-dafe-44a3-ab2a-0d22efcbf86c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3cc7d4029de3c13f898cec06b11727d2deeeb65df611a25d9898f78e2b68c14
Date: Mon, 7 Mar 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646640384
