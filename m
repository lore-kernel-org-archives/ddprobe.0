Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC4F433E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647011484;
	h=To:Subject:From:Message-Id:Date;
	bh=zyg12cSJdSRJbWkVitoooMPj+Y9XfW/tHdA9MthHnbo=;
	b=Gul9LiYMuBdorS/RCW4WDFMc283Kz/5wicDI41k43o/k6bLHfW6Q3jiuD4Sh+f5j
	XX3lqsntPoi4NKrlihS4LSjgMYc1dO9K4TjC0WDd78Vru9B/1PS86/otN9xEwpdleqR
	6ZMFdA1A83sX40MDpcAB6w2X3pfUTnOKqk4AAjOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647011484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zyg12cSJdSRJbWkVitoooMPj+Y9XfW/tHdA9MthHnbo=;
	b=Y5eHXTdo44Wc2yWFxXD95MwzZFDPL5O/aAavLJ19bGPlMHHgrIr4SbCFUPmZD1Vg
	TgW5H9O9fN6kmD7jAbXzMAYxNDIhWxnKAFwqhH+BtIaPGUexpEI0YmkaVUMlRaMiBEv
	b4cv/wWiG54BNQGAD0Ws/89A8m4M9iATpnysICWs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7988d495-bca38d07-b72f-4f4b-b47c-2cdf5fb8ca25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0961f5167cdf5d1b891e8acb814bd0496218375ab8b99b9b9d10f9239b81d204
Date: Fri, 11 Mar 2022 15:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647011484
