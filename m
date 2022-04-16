Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09457B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 23:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650152338;
	h=To:Subject:From:Message-Id:Date;
	bh=tVBhZdZUYh2uwEYxolcRZmJjd4f/O/ZJW/JYD+7IYpE=;
	b=K/4sJxz7wAE5+MLoUP/jdGHi6PUhg35R1KDsEAOf8u1LZTJrBvsT6S4wAw8kvEgG
	LzEX63KaHwFsqR91YqO6MUcf6in4wqajYyJzarv3Y+TcxYnpQz9UtN6SScgeDnBkbaZ
	RBSDDzlvzg9JqJHBrXfpXQObATmK4k1i30Xyi3h4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650152338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tVBhZdZUYh2uwEYxolcRZmJjd4f/O/ZJW/JYD+7IYpE=;
	b=aTk4fypZzwh/BAGiWnwCkHV2yLLzKFemT3hXA4a9aTD+TBDUsKN3zge0DRsE+KqK
	7+qwWaBsk2wQFRll1bBQj9d1Dufwp9WVGxrpfHEhf/CeF1vbJnHyhnI3UY+IthGlY2p
	BZkwkBivve+7NszVswmabFac2yB3rcSUTcdNXqoQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018034be7361-633775ec-f881-45ca-9b7a-05e9a9b9b3ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 760f95a69c00dcf427bb2e593aafafa2e3ee6b94d34441c7cb889b944fe9df56
Date: Sat, 16 Apr 2022 23:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650152338
