Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA3863D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 11:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654083359;
	h=To:Subject:From:Message-Id:Date;
	bh=8qR0yyWuyU7cvPdye8O1RnB3uEdGyW7mKL8lTrCSseY=;
	b=BEiZ81oykYa/dysk5R02YDXuwfnjN/R7KuF6ErM612z+Nu6Ykcz65ynEtYIgfSZL
	q7BUIrMKz2nhSXUcZT/WO/SIEKh97Tt6a9qwzLj9fH9xnH58PDdUxecZWprhzJZlBuc
	AIv8mqBJod3qwMs1aDceaPE9nA5gA8Ts7Clf9pIc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654083359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8qR0yyWuyU7cvPdye8O1RnB3uEdGyW7mKL8lTrCSseY=;
	b=kWXIq36QHxeE4OxxnVHkMwwM7b7QcEzB6HFQ0aPQycA8EPwZfmA0gdPvzMbdlDY4
	F1mZV0DayLUVtjcVZrzXihCtFy4YBqzYCX1c+mK3RDbmbqbrTKyffqBjDNsDtTI+aeC
	omfIqTvaXZ5HoRlqp9Bvy4x+QIswanyqSv7pTMn0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811f0d1214-7befb394-4ed8-48c5-bf4f-d412251a40c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 917ae6fb0565998274a81ee83d35045dd1cb1e006bf0fc29c58f515157ebf52b
Date: Wed, 1 Jun 2022 11:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654083359
