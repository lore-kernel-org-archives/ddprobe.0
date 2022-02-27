Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76E57A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 00:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645921585;
	h=To:Subject:From:Message-Id:Date;
	bh=+5spypQSqmbN4fPVnKWZnNo1KA+2bCysKBoFs8U/bm0=;
	b=SY3QnTWBkfcZ9EUryECRYSY37fbnoQk1nKA31J1CZfO6rbjhMu8WIs7VQaHFUqY/
	VHz84FIfpiGFfhAjHOJquOQg8xeey4SHizva3GsA5AExXuxIFG+4LjEW5C3nQ6Govmj
	7UvDvLtIE8f+TggSa38PSbO0nMH9htLvB8n3/qOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645921585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+5spypQSqmbN4fPVnKWZnNo1KA+2bCysKBoFs8U/bm0=;
	b=QZts4qHGzWQDP/tkINgoUoAavXwv28B8UZqrNdYYmlSXeWM0Pn4dgSBC3i63PejT
	i/8OJ3u+DqanLQgMAzzld0CNG8b39qmJpsESwlWcOw/cEHymaSYbVdhuEFu3v3+f7o9
	Mghtf6EUiBwwORf9bT7m2Sq+5sL2igPdljxX56+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38924679-cdbc1381-1994-46b5-994c-bf524da3264a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a57fd77bce1da8bd77113c947daaa4ce41255a76486023c8df341b1bbc3952bf
Date: Sun, 27 Feb 2022 00:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645921584
