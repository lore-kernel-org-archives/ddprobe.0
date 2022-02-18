Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E2E323F
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645171884;
	h=To:Subject:From:Message-Id:Date;
	bh=1dfpmkbUPSllZopl+J/q6RVLQ2bUgr0l6A9TFVQw7s8=;
	b=e9c8ShZ646qrXvPYb/v0bA6I040ZC7ShBOJ78meqB/X0RN1uCSKqzXQ4bFcqphZg
	JyhvEUvIz0wcrWyFBTSPf37/7VyVlx6+OwoQYAqkiuPP6sjda8rBb81PRYxNV9LSE2z
	KrQrkzDciqkpVRJpy8jYOJkhv2xl3+BDNSsRFMys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645171884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1dfpmkbUPSllZopl+J/q6RVLQ2bUgr0l6A9TFVQw7s8=;
	b=cNrg6j3qZ5xxHF/58k7gVLkGBrHfxiVFlEI0PB0rT0Be653RyZ2OsJstAJYmj6k7
	YN17XQpiJByQhdMhBKEu+hVe91fPf3ic3iWfhkg/w4NjPL9T6YZfG090VvQ6zCdv5gM
	4yOKaST1JfLjy9i3543eVVvD+Qkyiso7oGQXyNxA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0be2c2e1-360a7e56-31e2-4e23-b035-9f8a7b556d60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97cb20f312a38c53e6589dd9153e1ee500dcac047445d106238b1801cccce2b1
Date: Fri, 18 Feb 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645171884
