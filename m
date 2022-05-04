Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DA82583
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 16:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651680538;
	h=To:Subject:From:Message-Id:Date;
	bh=33Njg+YQNe6/ls1TZJGJmWsMiaJm2xS+QrS5StdIruA=;
	b=i39bmECA1FAe2wjscSWIXN7qDbqJoE1FzH62bve1JWsZ65AgZD4D9MOf1y2ltXub
	RYQkAO9AzQxlSSblxuuUWBQ9KpiLN3RhQ0IiUUOxXEkuIxOtTwKbWZpj7QHp6Ft4m6c
	xKqBlYoRDUyj6tnxQHgmadUQKYqbtJas49iHtE1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651680538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=33Njg+YQNe6/ls1TZJGJmWsMiaJm2xS+QrS5StdIruA=;
	b=Cbvk3FG/1fhm67LFJWNB6lJuINrdhbqWB3MFyGpOgKhd8a0W7AyWhsmZrREg53UC
	QRM7fn4f3DuoiG2v/Ook1IsQtgZUt1eRuP2ej3zttZz48DLlFT8wmbQlMWgXz/PEApb
	7IXnwV2LHmzOAFzRS6nYyEF26/S0kUZiZmX2St20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808fd4ee90-4734b3e5-a202-4451-805d-d78a2183e3a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c4e63975dee5acda3059b70e6d9ced5e38656692e6e8ecb15a284df83cc3788
Date: Wed, 4 May 2022 16:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651680538
