Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3612F5C
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645559785;
	h=To:Subject:From:Message-Id:Date;
	bh=qonHN/TPtmWlfMZ6wktP8aiQ0eOfHDKoS0KHq9/kP8s=;
	b=SzuiQ1h4wm4GrsDFYXCPt8eGQqzcJcLm9ceVE7i/61yW9N4djZUEiuQ7gJbMhI41
	ninmT6+OpAtEgw9nsgtZDF9IEfmuoB0DQYLNdPDN4Wf4N5/VKEP7ChsaQaHltDd02ch
	5Z9LBdfgR2trACCqjLG505iHEYBZAJkq5YVVpKoo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645559785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qonHN/TPtmWlfMZ6wktP8aiQ0eOfHDKoS0KHq9/kP8s=;
	b=Nyb3qM9lr7z5Gj71zgmCQxhFat1/TwDOOwT9kr1t/aByVRv5JQGSmdvDN6VrRmKd
	0nUyWgXFyqR+1NGVbyo9dQ2QHoNapw0tE6wzl0nRaJKwBWBY1MnPFW0gXeqvqXGwrCV
	0ywR6m7JtvqRU+TzKaDvzIFIyA1X0Dt1WA2gZ13Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2301a551-0c6dc5f6-8fa6-4d0d-893c-80bb6e773303-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f99067c8ff7921d6a4c7e2cc120e4b08534c93f66990d292d7e6f0d2375397d2
Date: Tue, 22 Feb 2022 19:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645559784
