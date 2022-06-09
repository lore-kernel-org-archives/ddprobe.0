Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F67E3210
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 16:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654791179;
	h=To:Subject:From:Message-Id:Date;
	bh=w5UQzMw4kDujEWfcF3FfKU/QzHY23EfDTkcp+wozTSQ=;
	b=N6xRyWgmg5xfxtn0OOsI9DKo5HUX9ewtTUJiAVplkDyV8YC+g4m5Vlxsdpn/lWv0
	D86NjBMot6yZv6iAVBbTiiOWszE4srz5FMmOUZDiB/jpE8AbGbQY8igt2iEv64hz1Yy
	G3gxqzTgQMDtJ4ticAnHQPr+Vna8GjCKkNfKtSOg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654791179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w5UQzMw4kDujEWfcF3FfKU/QzHY23EfDTkcp+wozTSQ=;
	b=gmvG9yv1cPba5U+b+SCJwU9B+a35XoMiYSTJ0LqUj2iUMhttEWIGyxdvlZ5dD/Ah
	6miUAri1tN4999hmdjdtVkubp5lAoD9cz8lNtUlfx+9pj+4iDEi75fS20KT9NbLX67+
	Rn2f1WwhcjDXnI5ZkeCuoFG0yhacxv/49guEiH+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181493d8beb-cd9db79e-a243-4458-9cd0-ccb6300c7fda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc537e024fe20b6b72e9b83315e1eb771adf0ffd4f6e5cd44bced45f04368cb5
Date: Thu, 9 Jun 2022 16:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654791179
