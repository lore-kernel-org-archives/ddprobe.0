Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC9B3D79
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 08:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647507085;
	h=To:Subject:From:Message-Id:Date;
	bh=IgKHAKUOZY7HkXjvRTv/wWkDj4PMFp4JVN64VPtVE/E=;
	b=jAjvqfaSrfavHLmPCaIntJpYCWKbIUO++Ed+CewmJvKcway1XG5T072hbiGp28p/
	AyaB6CN1Wr+O6dyYM4DRfsHHmoM8qt6e1gujX4HUMBoNdXDEpPzeF9gXaCNtbv7u8db
	UzBddj7Rqu/YTHb9c8QBQmUHNWT3zUSg5pijjadI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647507085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IgKHAKUOZY7HkXjvRTv/wWkDj4PMFp4JVN64VPtVE/E=;
	b=U+TFj171u5Y1McT72p14pvBwol/5bsLv4gMN4vt2ZCV8bXNDIcVIAP6IFYsxOOhA
	4CUx2hnzKG8WSIzk+mF3CskMECOeCnOtqrx6UjzfGRhr80E/C/n/l60w3mI/X74Odh7
	W+b+6uLZvixZsvHL4wzmLRuueMseAEDzk9Q8MvT8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9713161e-ac08f8eb-df27-4b7f-a002-6f397ccbb2d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18c808edead790f42b8fcc05f7e7b2480770c2c3c9652243e7dd1d38b88941ff
Date: Thu, 17 Mar 2022 08:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647507084
