Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09BE256F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 14:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654093619;
	h=To:Subject:From:Message-Id:Date;
	bh=Jkave3khNChh6zjM0mNLgS+oESxEow2Q8AOqWXUhijs=;
	b=ICUqCnM7fCV/pngc5QtfA0846F509rMd9Vc5XSWT5zvSyGLFgkloUQFVLtj5+Jne
	5dJEL+FZk8TX2O9kQoSqBQqVstVROPJE9L7P4zg+VnZtocZ5JhYMyENJ0fa6KxNDYLN
	M8iOd8tkR6Ul2WkTYeQ3yCQ1Znq263aLYPDhGvpo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654093619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jkave3khNChh6zjM0mNLgS+oESxEow2Q8AOqWXUhijs=;
	b=ShlJEVJeL1JrMqEFvgW5/R989ssJxrxlR+5nNdM/+Ghnel1WhXdkbJAyuITS7QYl
	NsWrRi5RqiPzxoTqp/MDWu+9fdbC7xoHETVWE+elC8o+lKC8JNBUK5cSNmP0F2f2v3F
	TI+IxooT13g7wSTNpOm/G6Dy+JVStVpTPOcGWJe4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811fa9a03a-5c9f22c2-d0b6-43b6-91bf-b4082d4bcc2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af445d28f3dfd81af932be98c5045cbc9cd0f974d74e915ef4421e771930744d
Date: Wed, 1 Jun 2022 14:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654093619
