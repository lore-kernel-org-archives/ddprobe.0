Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6E37F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659397852;
	h=To:Subject:From:Message-Id:Date;
	bh=PUxsNiB26usru0tAh4/AQiMlXs8S5lyaY78FgNJwSS8=;
	b=TbZI3IE2Lf4hsh4WpjSzqqrQ6f8wn8gJ4POzsbiw9waWgmykxDYmm941UfSAnW0U
	60KEXqU7fj38FGjWdg2bhXO2F9O29pEkKOp4FayDHc7xJFCXzRYL+Ubr0osHB+iV3lT
	HRsUKhpmxO4ACzzzaNWtNYvh0U9H/6fDfuDDj1AA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659397852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PUxsNiB26usru0tAh4/AQiMlXs8S5lyaY78FgNJwSS8=;
	b=Oe72ZL+g6qOq2USk6KcX+mgamvHd4rTVpAYjmt33mmeEmYIOHXTf5KwtBxNdYuyq
	eyG86vY2177epqDPxYNy/5lPcLl5zCIJpbf4Qry2aDTIJqBaYoYt1aL4FmGz83TYJKn
	Kpz7CDFgQaR59PrB30Mv1jXirNEFQCsgdN+WStTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825bd1cdc2-87c78e07-56b5-4849-8b95-746c74e96f98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86f981eb4b6806cb449247d862aa059898526ddce7a80114bbcce993cc421521
Date: Mon, 1 Aug 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659397852
