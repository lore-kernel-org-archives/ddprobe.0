Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE793FF5
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646029284;
	h=To:Subject:From:Message-Id:Date;
	bh=8LnB3yhHJxJC8yOXvNh+wJd2OEzg8oR22fdC/RYaoEs=;
	b=Z38DRp+sj3ceqtcb0sQbSyWrbk1driru5DAaHxDsiHDDJGc01k7w/xSlj3S+Zjqe
	R2J8GxKslI5y8/VH6jPsOmZ97Tb7gCi9PGa1v4MYDuEfjJwrxC64nKm4uvVtXAQMNvL
	JhcYUk1Ta9EnY5ZEe6E24Jq7vhVhs5yZqBGTR5yM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646029284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8LnB3yhHJxJC8yOXvNh+wJd2OEzg8oR22fdC/RYaoEs=;
	b=luFfEpa7cy09zKjQIjwXgHtR+6TjQsWlAWb7xiYKyapgcOHcBcHEdiHtrlRONDE7
	WwXevjefTWu7j+YjYzoLuNYRz7gw2B15qfQCck1clCOEUls8kLh4Lojie0OaUaJmVqG
	7z8X0E9dGYucfi/w6nM65eay2dcwVan+5WnR9pN8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3efda586-f360d825-e15e-44b5-a2df-1139d13edaa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b58c44ae9d23cc6951e4e4fe87d905ea98342ec7b30d17f20bbd270e8270d541
Date: Mon, 28 Feb 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646029284
