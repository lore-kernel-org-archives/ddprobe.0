Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C045116
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645259784;
	h=To:Subject:From:Message-Id:Date;
	bh=iPqzxlEf+nQQ+TTFNaEJcAq645kZNMLoN9RCFyVv7Z4=;
	b=ORCsDP2AB7i4siRURiwkMKA1Ie6d0iDvDjMJ/zxqDQbqCKVlPH+GUuGjbZcQoUrq
	BlEoiqBfBaRqsxYq/WYNybnEtLjGItHb2izU9B/cIAPLRxPh0eacEPkiDMqLSH0YFXe
	q+HQasPbDaa4d8lgn/pQqComy1lHCKur0vTVxVwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645259784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iPqzxlEf+nQQ+TTFNaEJcAq645kZNMLoN9RCFyVv7Z4=;
	b=lDiukovEUfJx16wWLV9KYKdjpVMJGMpUtqShnpX5WLOzm9ZCjmEyCgtbWumh6mrk
	oHqKFWJ+3vFsB3GxX52kWfHrH2ZhGy/jp1F8RvDqw5o7Jytx2LEf6Dhw+JGG5fnN7En
	X9VsH/klCZicQcOi9qCwb6G6ConQb/yZ7kVTO/ik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1120021e-c4d78880-1288-45c3-994b-4b9ee0cd24af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf09f75bf166288a7927499c328c045a72329294c3df11e383227b80a8f6bb03
Date: Sat, 19 Feb 2022 08:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645259784
