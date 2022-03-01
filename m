Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 938EA180
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646117485;
	h=To:Subject:From:Message-Id:Date;
	bh=L+cig/k0mkkT2rzha7i6lK9mf/ujE8fdrlntKC5WxR0=;
	b=AR1YnXvwwweilqQP4fuLNMml8KautpKxpCaERoPuSZJHPDv9oYxPfJ6FvSC+MUJm
	Zafq8PlzRLpsuF7p+KqN82whl0tRq1MYImwCZ+j4IEqmcULlDbSwtwvz8LwZFLb3VIh
	sFIFGKeXNtgda5ZkX9s1u0Y8ADE2ejUr2OlClQo8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646117485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L+cig/k0mkkT2rzha7i6lK9mf/ujE8fdrlntKC5WxR0=;
	b=jK6GsSobf0YxfNIlDJUQKwgaG+G3KFJqD0FEDVKcmIONsFVXsgQIpkozYfPOJXTd
	kgNLX0sKaK4g8klhyLNP5k425UdW14YN/5N0/2tol9JyP+Yz13wnggjGFDBj5yneI8a
	l/Z0z4cJeXnOXMx2ol4OJ7gOhnvo55GOamuQLdME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f443f78f0-d4199b6f-2efc-4a10-b4d2-ebf8c3a105f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3e9f1abedf52e57b2979849654fa92c57356c1d8252f0b4aa2d89e3b00dac3b
Date: Tue, 1 Mar 2022 06:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646117484
