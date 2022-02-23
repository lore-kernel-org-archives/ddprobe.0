Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7357D2F4E
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645642584;
	h=To:Subject:From:Message-Id:Date;
	bh=qynPhcbRRkZ1ft7RAIiCWZlnGxH8gc3kLcVllurhUZU=;
	b=X3s5B6LeivVZllropSjTGmlBCpWTJlgclM9TeA1hXZDqQfrX7qZQ7UYSlkUwme26
	86uagP+huVipdGQK5RXMJz6lX/jn++M3ISWyDci+303aMKmQNCVhu0uQULeU3e1SRvD
	+Ue3s+t1ZgOQBh98j7fIqO7jG5Zsg0LjdIwcYzMU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645642584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qynPhcbRRkZ1ft7RAIiCWZlnGxH8gc3kLcVllurhUZU=;
	b=f6r/sKF6TBKuL+o8WXungEyBGyXnjvnz/GGXe7a129JfPxd8kUlnZkjx/I/U2Ed5
	4ab9VNr368hW7pBEsm9QMFomSkMHQuoa4vIcibpwtij88pSMOSFwxGaHn8Qq1exstFC
	joqSHSaY6M1Q5ZdaSYNBuI/getjC8NZRBGdjS1gw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f27f112e4-9c760e7f-f8c3-460d-8c86-d36eb4a339ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29f082a99b2d47571b2beaa907753f3b4e2297b9cbe339407f6deea388524be8
Date: Wed, 23 Feb 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645642584
