Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DFE7B
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661172652;
	h=To:Subject:From:Message-Id:Date;
	bh=lMbWeYfnyQEMkaMVg5hVX2kwco94bRNnXy0t75elZgA=;
	b=TbSihi5pvhMXZG66AoBdxHRsIkX5GfQhFo3l9mBfXEI1N7YiO7dkRJNrQ9Gd0yFX
	awaWAi7uXQcj9dV0slF/Bj2UNMjGqZFa0Vs3J2LEZeDpJYzDo2KaeOJWdhM59lN02iB
	yajEVeNNrgZ69LWM/b0AUFxsuzI7v+uZ0MYPzlRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661172652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lMbWeYfnyQEMkaMVg5hVX2kwco94bRNnXy0t75elZgA=;
	b=dfCuqXJKF/d1oXFDLH+mOSyTRLaQDjfMxyF064O5oe8l4eB4UV7lxDxJ1fbPL6Ss
	BmeWsQR0Hq3BxhC28Easm38ebTw9eCWqA7/XxQZotwFaFg+IJwqpIrhpvCMzYAjz/H/
	JMwy+xi5ClmUkd1/1eouJ7h/1TtSGgO+kJfF72c0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c59b1a03-115e4d4a-5533-49c5-be45-4d0cb1777b35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdb7b69f99496af798d6772afb4420ec576c7948c4e6041c51451a98e8a2eba3
Date: Mon, 22 Aug 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661172652
