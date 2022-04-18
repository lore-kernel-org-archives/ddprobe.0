Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F67D7E0
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 05:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650258598;
	h=To:Subject:From:Message-Id:Date;
	bh=kn/cijvxZyoJB7/csHjyjICQE7l6n5RyqCBaY/uMQjQ=;
	b=Y8T47YlUOCZQJIQurA5JbkAZnrW6oWh8s+iO10qP6DWq0MHvgUYDiThg+74NHred
	xSBdVVrLE39ZlsH0I9YSa9wC+17FrTb25ogUHKP2L1G6i5boTDG7uYT6STRorRhDJEy
	IqfH+mXFQzfNwhm8fEUYBaTBfGDKMMIankdTLe0c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650258598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kn/cijvxZyoJB7/csHjyjICQE7l6n5RyqCBaY/uMQjQ=;
	b=M8itS04LNjemKpoOgvSiojqwmSpCa+bUnPc6FXXdxLbQYeYeBUY/C4cV+BjQBrYa
	rtEJKEIr/+WDHk5HXWDEtw+SiLIvUimj00nVjvIfBeMZbfNMavAT/madmK1YSUMr6Pc
	w4q5qaJ75szfoKxtzTqN4nJWtv3IEEbBeP2kMjVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803b13d976-0f5464f2-1416-4a71-abb4-b58bf3bec8c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac176f14d88df3377381bdc086ca689cb2cc268a601cbf717a2762e44ba063fa
Date: Mon, 18 Apr 2022 05:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650258598
