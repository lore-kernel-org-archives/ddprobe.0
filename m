Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96DDA2F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647200485;
	h=To:Subject:From:Message-Id:Date;
	bh=mXiuWa+QbGglFeHSef387f2IuNuR6Dwq91sWmYEcMNY=;
	b=cVZdbV++z1+exZgdZvxf/U49ilyQLsy/zjfbkGyOvZVutg96n2euRukMt/nGrT5k
	WCx/H4E7hcT6IbfmL62m9V9359jCIDvBHc3ywaE12QZrdvq1z/0M5qTvbfvZ7FQAyXv
	4OiIJ8SYo0X0VMW3ogRrieNSUS0VAPZju7H+2XNI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647200485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mXiuWa+QbGglFeHSef387f2IuNuR6Dwq91sWmYEcMNY=;
	b=LkuNWYVAyc4Eg490Jzj/zfmv5Mi29RvbeV52cd3lJE+ndl6JbBTJohE/s6PrQeeH
	un1r0UhujtPgwNWCHCOtNmMZ+yCOSi37IsH5UGro+x1MpnNKufjer/PW8px5NIHf10v
	pnJDht3fC9v4d1Z7iLu099c6mcS9mkSYaJYE/2Ro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84ccbdc6-299122af-efe3-464e-ad24-670793a8b308-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61b94ec60f89d5a1a1b9d6a613016c9486f2cab2e481938d8b575ecce4ed771f
Date: Sun, 13 Mar 2022 19:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647200484
