Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ED027C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644892285;
	h=To:Subject:From:Message-Id:Date;
	bh=dnw3c7sLqlN53SlhNFhwNUJ7mGN7iOq3gLbpIReJQ+4=;
	b=hBRDVlw40V1P5COhTqozEaWkM8TLg2Awm1hhCh/F+pcx2Apg+0Qb/yBbeIbyzCG+
	f78VEU6wtQ0ZZOqYE6YyaQyucCOtx7mWuOk6viOegeJStfVbpv5eSOdbD9p/Z69gqUE
	SGwjlhUwmn4dIdILi+KF25EYmCPAdZcl8J4j557o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644892285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dnw3c7sLqlN53SlhNFhwNUJ7mGN7iOq3gLbpIReJQ+4=;
	b=RR4g8A5xVqTTvi6IMCQZrn7vnu66uZaUVW91Ms5K6W7/z2K9A4zyg/p7QEjLTARl
	yn2MudFD6AzAaYOvnIzE2RqN84gIbJN80BD8qep7K7HerRaBCGrH8Iz8CxoFN2PnMEt
	ZY4QJxN3FA5YwpJNxD0cTO75QsiMxWJn/5KH+8XM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efb386759-a00c66d1-2287-459d-af8e-dbfb3b1f4e31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaae17cc321ed882d8464777843b205380a1b453d5da9e97e44f0a6cf3c38f29
Date: Tue, 15 Feb 2022 02:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644892284
