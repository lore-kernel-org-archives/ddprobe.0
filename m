Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DA23216
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 10:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649239858;
	h=To:Subject:From:Message-Id:Date;
	bh=bT+I86y3BRCs7XDBix+rB/x4okwyDrmLsQODJls4gDI=;
	b=KtEZ7nmXZN+6blfowEnHH+/VKSgXwfFw48kv1Q8Jo1GiP8hPYgEZSbY6LCZnQP7/
	Y8E6B8MiZF7ISa5OfsJGAryZxXAN/zMIKaCC70oGubGUZ4tuDMzX1SQmQnBIgNUtzpy
	jQX73x/ed1jTIi+k3kxLzFnQICObQe2uYWzfmHcg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649239858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bT+I86y3BRCs7XDBix+rB/x4okwyDrmLsQODJls4gDI=;
	b=YxnmcQVHFxgXZtAdkuCJVlhHNLAqMuLnTUVkgSU+/zqMLzWVDQuBmUq4Q9K1wdDN
	vfRSvGgYAAJAlvuLDpP/BgJbkzyWYKNbZ31C5vMXxpekieeRi+sy5wfKRRYdXlDrOKm
	sdkC5kALiF+yYlIOurGNT/9YRTOFlGbpLwabQ7gA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffe5b1c74-33fb8ee1-c53c-4a76-9e97-2437ebea449b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72444b62b55ba479d9c1d38d5bb156fe8e8761f2ccf995cfead2660ea3cd25d0
Date: Wed, 6 Apr 2022 10:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649239858
