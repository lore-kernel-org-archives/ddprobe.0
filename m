Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD5CD628
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647945685;
	h=To:Subject:From:Message-Id:Date;
	bh=9LiHeVXGTYVsbSny9LmiW+5lKq3szk0rP174h0FH6kw=;
	b=MyS+G0vrHdIXEW6V5wbwqzyObK9kunaCw2b5L3vMRZP92cMo/zPJ7WR423KiPgry
	JvGfzq2RGxjg28YNnRQkvg67DIVxKtkHBPAHRyuxqHAumdD5zzqb8R1B/DiAe5TigSY
	ksLkjjcF5JwwtUzn+ZKu/Fi8tygncZVRzYRHTHyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647945685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9LiHeVXGTYVsbSny9LmiW+5lKq3szk0rP174h0FH6kw=;
	b=eXqa18PUDGCGVsx+n0Z5NTzI7pVlUcHMWLrFdDs4y7dtmrU/h2eN7G85aqkM5x8n
	kVB9UhJk61WscNB3d9KUNgPYO4XV9O67KlHzZfTHrYVWjpY6LrvKC3sFS+lqZbe75bi
	HFdwH+yIE94t8jdGjkgmA4TUrePh4dql6kMa3rlE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1379777-a504b23a-29b6-45e2-a262-0054910c3fe7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b54eea6778aae1a11e30907d00c1f9ae98fec19750bab057940ff6516ed57fe1
Date: Tue, 22 Mar 2022 10:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647945684
