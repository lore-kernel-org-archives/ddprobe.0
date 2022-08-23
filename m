Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB632589
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661266253;
	h=To:Subject:From:Message-Id:Date;
	bh=P9LmPryx/SBhY3je9/aD+jUzoCA+PNVKAgAbbCg9trc=;
	b=Md2yuIWVeFbyW4aY7x0Sl3uvjRL5WxiPj9phsr7iwPhGqzuhUWpB9aKtcRIP4/1k
	8zZerOAuwseY02L1j6/Vf7NWNoCy0vs3at6kLa4Z7896Otdyn5tbMyayW2RwiDz6XwA
	UShGY3HSGWkTogftURi1l1lmIpn+Xvc0RDbWPvVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661266253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P9LmPryx/SBhY3je9/aD+jUzoCA+PNVKAgAbbCg9trc=;
	b=awYgD23tde4xrVnF/AYsrh1WVXAwzY/iTru/LWwOa/1UWyrupv+ulrkYrF/FGS+n
	lnIpxMR8TbWyhfx66WsA0Sh7ZSwmtzHtm3U3NXQpB2ZY7qJKl+TvQBoBW4sfsceW/tz
	u39+tF8PW8MoTXg2knzUvElaoDa8NT2BeFrwa+RA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cb2f5334-9582b104-14cc-4e69-9308-7deecc385ec5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c10bcc61e94b6e90be7bc0368506e9e29d546cf1478d2c8f67c32209923dbf7c
Date: Tue, 23 Aug 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661266252
