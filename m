Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43E12C9E
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 00:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644711602;
	h=To:Subject:From:Message-Id:Date;
	bh=i9KsO1TGGhZmqIMMqaUaIztbSqEbEIaKkdEd4PsplOo=;
	b=SLajxOqBiu6COglMaX/dQe6UhxEpp2k1sVsd7BnhLC+sDHnlFAgNosCa9NjoHFnQ
	UHG5IeltGBQUAAEzNq8xFEqpDV0adQuATtY77KyXXzTFleiOlz6396QKRJTp/Qiv2XQ
	xY3PAxrf8vpHbxBKOq08ZigbwJogJG0BXve26y4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644711602;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i9KsO1TGGhZmqIMMqaUaIztbSqEbEIaKkdEd4PsplOo=;
	b=Imt7LWa/xoIlq3JNTPqbG8oLi7hwRHIwoiCuZ5/I3Mj+fXk2lf/sgLxiMq9vPIqs
	lTNGbBwlqD+Tg12L8+rcJqqKXOWY+bSm86bwJCTC9P/KQxC0LcBNydUfOwxAQmH8w2v
	Hvrk63DLzOwv0bZUxz5IZd7ap0N8yUXe0DdXT3Qw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef07369e9-c338ca25-2c03-4a07-a4de-4f6e7e39d617-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbf30164ccab324f82f0d5a9a10455cdccb67b5b1f2630835d2238c3b974b16e
Date: Sun, 13 Feb 2022 00:20:02 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644711602
