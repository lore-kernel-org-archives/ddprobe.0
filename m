Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D9FA1B76
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646492784;
	h=To:Subject:From:Message-Id:Date;
	bh=QhXBqzqzKUIQ9uv+EOOQtvx2dVz+5eWW2aHmirvEHME=;
	b=DWUKeGV5wczvAAeas11eWVvghCNg8JQ79aCpRgAszS/KGhXaJZo2sOuYadOzgUZt
	MtjUdPrWjO7/1qFCGaIr3hX8tyEhmZUz/yVv4NQoV0hIg8WaWygQq47vKef1dDuxA6k
	1OcO5Coc3n99R2Yn9P+al7bqQ0K8ZNj1e2FsEPPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646492784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QhXBqzqzKUIQ9uv+EOOQtvx2dVz+5eWW2aHmirvEHME=;
	b=HhSZr0UQbkIF1YG7vkPXKBP8Vd0uxqG6se3JipYBWmE0jajeW82OdNzZKhVKqHvy
	+6SVqa9TaE1hVgnSxsSW7IYY+8Z9iI1n9oC9h/Jheqoba+utCmfXjsbxCSrQuczLrnm
	fnsFB5pPJ5UK/6kS2ZUJAcm30HBR15eWSoMDYFic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5a9e186c-fc56381c-f277-44ae-b635-a3adcc5a1a10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46432fb8c20d893fd3de21cd7dd319ca5dfc997aef12eadaaa80129a7881fc36
Date: Sat, 5 Mar 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646492784
