Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9EEA373
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 15:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644765047;
	h=To:Subject:From:Message-Id:Date;
	bh=8u1KSYttMBTUjyWyYyp4EU9vrWoPAW5FtkzqWyulLrA=;
	b=TvcoGNu1N5qmyLsrMAzfG33nhBKOBt0XaGqdkhO8ZPKdh2Ewdcj4ljOBIk/lleWi
	Zj6ct3RAg5IHzziCHa2FzdcVzKV9L6de2taMzPR8dzMZ1ZBCxw5dNrngQnLvnPX7c53
	zWy2OWLzn8Vwvuk6/MaIV3J/y+UCk/RrrzL8GFsw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644765047;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8u1KSYttMBTUjyWyYyp4EU9vrWoPAW5FtkzqWyulLrA=;
	b=AzGidrep/2ACZChi5jKUXiUoXUz0LkQzm1FJUHB8gUJqE9QVt8eP2AGKndMIZXXd
	MRlKjXbyqOU3XWawuCkscK5JdoIGiK/BEDPefOHoOxxy1XvhCf9va3bVy/y484WEUrT
	RzRHJ6Wzj7JlJ5OAhgXQaDRoIjwxbS9fOhXMD6FY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef3a2e870-870b5688-98fc-40b0-afc9-7e1bc34e6849-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e62214719d3a71d4a5795ceb33e3a34dc7d6b07c1ba75493add8c655141dee4
Date: Sun, 13 Feb 2022 15:10:47 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644765046
