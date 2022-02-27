Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A6637B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645958184;
	h=To:Subject:From:Message-Id:Date;
	bh=lbYSLG+YFaeonK+haBPGzHz6ofScz2Y2t1hdQcyPuvM=;
	b=DRY2QPeHfoBahoCFJJTw72SSI1XLEoHltv8M7sRpAc/MlD4GR1dyBOzJqF4MuN6s
	tkULtkcwnW+X9avk899guIiXh0+pxqgK5Y4kqhrV2SPAyYh//Rzm0xfShHb1f4TZeHE
	gWQ/Wxv5iYJRxyGgn+ZxGQGVBXGIQID7UdIbZjYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645958184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lbYSLG+YFaeonK+haBPGzHz6ofScz2Y2t1hdQcyPuvM=;
	b=WoxK9gTb5m3F8d0AT4xZjw0DryHOVEz+rp0Z7oqa30g/6KnclQk7A3H3lunYHvrc
	1p8q6EgTkTdnk1O5TDD909kMwzar4QY8lmNWbtRLYGPRzTcQy4/8z08ki7/Dm7+Rif2
	8/npK5IdJEFfYxsx4L0aaWKATaDcfdKlW11+dugk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ac0bf32-d4bf8f46-9ce0-4fdd-911d-b4fb5f8ce5f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca916387a7086261f2b66787be560493058cce45c0a44c5f8d6366fd51ba12f4
Date: Sun, 27 Feb 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645958184
