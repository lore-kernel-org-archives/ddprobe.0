Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB499291E
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 19:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649877958;
	h=To:Subject:From:Message-Id:Date;
	bh=FxJl9VRFXB+GL6PVxhWG9sLjOSjNxv/Sv6yJ/HPXJDM=;
	b=W4wGs6mHjZmNkuN1xElh/42PXl1MXnjmvXaL82HvJbnccqdR9aQRcTa/GW/i4LIh
	LbYTrfp0Q6uPsK0jQbYonBvu57Ph1AgVFK461sRUYMUx1A/s0AEQHlM4/L/5UdPG3pj
	eC1z29Qk33ZHA/ubXBqmN98zNgscIQg7neeml+yU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649877958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FxJl9VRFXB+GL6PVxhWG9sLjOSjNxv/Sv6yJ/HPXJDM=;
	b=JBzA0hTSDaD6BEMm0QSnD6JQHY197vWAm7TkUB+YoQxQaVC1efP3Vl6oIZvayDKD
	eng9KzpmwDcemg4WVLJlR3OEnSHYEgBhQphrcEOv153MbqSyrLj3srC75O7FzgGq+6e
	u5xZdcxvgTybU5X6o1wrhJhcdjCJDzE+wOnhuTic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802463beb0-b3cced58-b353-4574-a72b-9347a71ada27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb221e5b60d8085731c9eba7dd2cffbbfc2ca7466a4d8a21d614b1cc912dcf06
Date: Wed, 13 Apr 2022 19:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649877958
