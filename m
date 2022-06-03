Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDAFA28
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 08:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654245299;
	h=To:Subject:From:Message-Id:Date;
	bh=Idx5oOp9gScbQtMSOjSd4co9ZmhDhh02hnX8IZas2NQ=;
	b=IBij4wtV++SqsQFUuU42n617Myty3nIud1QC+ucK6IuYYKSR7a9Z2g1iXGdqvLz5
	t9ZM1CD9OE2i/ZWmDo3Wju5Ny9+rFDuJSLfwm2VnAotiV2VpTtRul9R9V1mlQcR+LGr
	aXnwngloBa987P+56NQd83ffOmu/XfFsGT4leJLg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654245299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Idx5oOp9gScbQtMSOjSd4co9ZmhDhh02hnX8IZas2NQ=;
	b=PS4ycdbG1JT87wx+1eqqrYsdDj4eB77oYcBGARAN6UvHnW0HDzg+XxGI6Y1nI7qO
	sUPdt291VSm0C9FJ/fl8j1BVg65MEafg3EwA6ucxrblwtT752w7kXK9wKUrzw6YrSnk
	s4zH96bzVlxLvuemYBwQpMuj2hNOBwk3j9CX0+9o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018128b41460-b72af8ae-18c2-434c-9b47-228b29b6627e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c93b7da35ea22c41c80bedc8cdb140459726e9116f6badd09ae49a9155215c6f
Date: Fri, 3 Jun 2022 08:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654245299
