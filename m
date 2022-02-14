Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DC2627
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 02:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644804624;
	h=To:Subject:From:Message-Id:Date;
	bh=dmk/JtcWvhPQhNgugkky44y77TIDrr9twJ9S6fewhi4=;
	b=HnReTvX27OH2htnYgxXrzY8rxZZiRvdBcuqFEHPGEMNFblT4RsFrPFXJXOERwxOJ
	H4lZ0IwuWkkTtRlCrSQdQuHvar72XxfnRmLzdIl9zPuIEuP/xjAkNYnM8skTJgBeKFf
	SKRU9mL8JJlq2YeXwFsp68djfD8QNwt/H5N61zy0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644804624;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dmk/JtcWvhPQhNgugkky44y77TIDrr9twJ9S6fewhi4=;
	b=YLmrfnxjqwveoU8Ag70levNnDt3PFwLiGn9yh0PJHyiOUo7KM1gVbBZMQMPB7Lri
	L2fs+ePW8Zgbm9bD9K1gs7k4kik3kWkpmA2+/4LxNF45GzbpnGNlWTFD0hZpS8++GeW
	xswMup1+nKFvVlvq++/Zb2Jh6MvVG037TS41j/sI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef5fed0da-101805a3-d9dd-4ca4-b7b9-857d15596ebd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 407ac753f890d415e05193adefde36cf1be084a9c2e76c395ef7368cfd81b142
Date: Mon, 14 Feb 2022 02:10:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644804624
