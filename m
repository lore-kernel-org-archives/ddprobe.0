Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1097A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 12:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657454812;
	h=To:Subject:From:Message-Id:Date;
	bh=AYDSmBFatl3Db1W7LNJD9dyUfoKlqzzXLHKm3/+xWn8=;
	b=Ey9LV2xPolpktieU/cLhY7/ZSoqaTVNiQUtGTrZYQxJ/dIr0a/JczVicMQgpyyOt
	BJ4kQearu8rJcEiOUcLngtIkFjke0MWh/wHM8y9EYlm1m/ORWPGB+ufREUTL379r37X
	Qhu8EUdq1PNHYhOA9iNe8XA2/FnmOjy1cfBcAxsA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657454812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AYDSmBFatl3Db1W7LNJD9dyUfoKlqzzXLHKm3/+xWn8=;
	b=WFX6adBHpyP2YXumgRkk5xxbPBjorMLVKnvkDsK11swll1M7X2n49Z5dE+lpQpEq
	/uJ8daCUKgEreJ8OAByICh0KGpquDavdNFm/JmRjg+tntiATr9+sLf9OCr5uHsWErbP
	fws18gZ6XeVZR22dGxJZiYVz7IHc36xOjv4keyso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e8015d19-b3d608f2-5e0d-4b33-8e09-8e83cb0f5a45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0c5e9876a6daa81fadeff35bd746986cf46533e167de3ae9cdd6f427a4e9db9
Date: Sun, 10 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657454812
