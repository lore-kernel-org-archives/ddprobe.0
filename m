Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99FDA10EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 17:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646589084;
	h=To:Subject:From:Message-Id:Date;
	bh=e/iKmZ4/CW43lgteVbIaqkQdykEbzc9PTBMeQY9fp7w=;
	b=CPHqzLFhiuN49epFFGMYqu4goNLluEG52lEHePl4itKk33V7TJ0Gtigwk8kv91aS
	lz1XPBvAVuk5jX4pXiP45c4xULmXkQt/vZYXPGaanL+YKgMmbmpSyhJlWqpsmxHZ7Xb
	PI3UGjFe7WDGE9SyyvhtWBYHLgmeOTfcO8I59sxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646589084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e/iKmZ4/CW43lgteVbIaqkQdykEbzc9PTBMeQY9fp7w=;
	b=WPv4xIhBumjwkr1j8M6vis/ZfUYwakvYhosv3vmtCWlPTI2hIndeWjAqhZsi/rWP
	QzUq3VThnmehA0/ofPY729/KLgceee8l6t0no0dzxVyAeETz9GcrzDjKFy7pk+M7or0
	HgWy2ZKxPlpKC47RUs7XlZUakvgXX5zlWShO3JHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f605b8462-3fcd5caa-6a55-411a-9ed7-866adf21485a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4f4c8a80083ac2018b873502e6a1ed31dfc99a1c3826190f51f7b1b4f7d0c43
Date: Sun, 6 Mar 2022 17:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646589084
