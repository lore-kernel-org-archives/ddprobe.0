Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC153D88
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659979252;
	h=To:Subject:From:Message-Id:Date;
	bh=g1jYVIX+BPnxFe5+ZRHD5iOC5qcff0QJvwaWJaAAAkE=;
	b=ebAZ7kSyTKyhKINDvYbIhsM1MQZZ0jO+1+LwGyIBgO7U0hrAqLFKq3OjrHL64to8
	E7eem4IBiQ4HwBSQttTc6NKNOQDUN7ZZDWtEzzrH5Zaxv14rN5gyyllLncE2m6TUiZ9
	XeNX5/dPaIJWMW9EfhVylBZiCNG9vREN39+xcNVY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659979252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g1jYVIX+BPnxFe5+ZRHD5iOC5qcff0QJvwaWJaAAAkE=;
	b=TyUTaxhqy+YP/2KPkzmaMx6S9l9v0ioBKsyiwkfsFn2HMI63yLwZkyMTv9g831u/
	LfNy/xoNsvmTmq+rKYduRMDpN4CSjqXdh0lg59VH5HJqzEgvahxlzB2JVxplF+SyHDr
	cabPvGLwDz4zdRo+N+S4MOkKN8QKzQZQt91j13Ko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827e794363-72708b04-1a4d-4e18-b810-e8011bef5122-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39e90018ba4786f0d85c7a87c21ac89d64609fd04a16c0c4905590baa42a874d
Date: Mon, 8 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659979252
