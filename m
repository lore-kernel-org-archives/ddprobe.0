Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0991C362
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 04:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654837079;
	h=To:Subject:From:Message-Id:Date;
	bh=aKYZqLwvY9dWkTSn0oj+FvTM+A0uCrsp5Thj0c94i3A=;
	b=cokr2K5g1QNiXrqrBQ/Xy4CDRsVdhgHoRr8LH06P5luVBrKwRC/6s6IgfAGSMdiI
	WesNAbx1L5aSbARulsKAFXg0q1VaeRoAgqO80fqwzoZXTIZ+m3yEX2W/NHcKPv7jToc
	K6DM9GphymmefWebSicYkrrvn54TfaGNPddojERs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654837079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aKYZqLwvY9dWkTSn0oj+FvTM+A0uCrsp5Thj0c94i3A=;
	b=PNYjH1lxR0BNXIoJZQAZE30lZznERkbZYAuAUqx/hqWBYs4LQ28B8OLe/9EIa5sP
	szmroTAZFmT+dwxjIjP3uCXzk76B2XXGTCw1O6YPqxWgkzgbzht6Ri70LQx5K5m4GZh
	CYnYWDyrsFXPApyb96UTH74+BDivhmIjswOE1PFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814bf9ece9-a755d6b6-d289-4ccf-9428-dd8dff62526f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccf20d7c652ee8b8de055e949fede1027ddf5c70cd4fc81cd8943b2f95441df7
Date: Fri, 10 Jun 2022 04:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654837079
