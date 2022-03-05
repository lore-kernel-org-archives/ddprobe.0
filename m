Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417901B76
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 15:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646493685;
	h=To:Subject:From:Message-Id:Date;
	bh=+SH9XFk4PKZWmRQbbJv4N1APW/4jj/3kvoaJk2I/eNY=;
	b=a7e8wlGTiLbUqPYlfwz7t3DzG/ET/Guy3+oJwPUlVIhWVp7DpGSohQV5pxFE/TWr
	ZNLUYmyCO7vib9KxBBhQNScg8Fp6OlMRnZiNCUdRR8ha3KwZsuvyKk+MVi70BLtf+CA
	8bAZ7GRqT69Swu07zannHL6aP8xOMGSPIHcw2Qcs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646493685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+SH9XFk4PKZWmRQbbJv4N1APW/4jj/3kvoaJk2I/eNY=;
	b=CGwzpq49uUJEWyqW2sBVNKOZgahPGpHJaC3fotiR3eu95svw4Yl6dProG+Ba5V+O
	Tr/gauim8rGI1z5XrZNGXbwkn1HtGdA3lMsAsNRBoQPia4faVrfchMCajgQPkh+YfYz
	vwMSevlg5NM0DAW7nhlWdmxN5KvxTGGQWyZNxkRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5aabd44f-364e5abe-80e7-4c95-bec0-0b11aca6fdfc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dacd0f370803308998522a616b4912627c9a7d6df02c7f434e14629f74fa1e9c
Date: Sat, 5 Mar 2022 15:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646493684
