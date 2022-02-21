Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1F820E7
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 03:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645413384;
	h=To:Subject:From:Message-Id:Date;
	bh=b4v7twvX+eB13Vyl7LJccxK0eINgbXe/XkBH3RxsHBg=;
	b=RO9EVm+KVZRCvP8WJksKkxe4HdWXdZ2SzJoq3LnT9C2qZ2NwWR/SqKwLDTjrhOiA
	B8vMQ4wSW2ZGDoddJmToeDERtZ6FW2JyoD6lEvhD9pnuTnSobZgJzujP5rUutPBTec4
	P82cxschWgERs77FqDgLdEU4Xy10qVqw4IJpHCJI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645413384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b4v7twvX+eB13Vyl7LJccxK0eINgbXe/XkBH3RxsHBg=;
	b=JTbh6P9MTd6Pbv12ClzqLSvSUiD7kw22vLBP3B5p1oXYMpAt/CFuHhVsYh/IuXhW
	qyMip3NUzq6ZZhEL//xO846I5hvp5P+rTXf8L9JdMB9T41YxPLmCr26l1DiOAChz3gR
	PWR7kiPhKh05X5NixDDTvgF1Ln2SNc98Rl6du9AU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a47c238-a1bbae2d-dd7d-42f3-800a-186d4979c7e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74157e41ce3b34e89155b569dd0ab3244f094ff9a316a358480b83d77f091f5f
Date: Mon, 21 Feb 2022 03:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645413384
