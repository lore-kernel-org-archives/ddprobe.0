Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E32804
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 23:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654988999;
	h=To:Subject:From:Message-Id:Date;
	bh=N2BJveflZLFp3Yh4G36ZzR/b68+Ee8iefIDJwx/8GDw=;
	b=S6D37XM/GTjzk/NNwaVKspwCEO4SYUbMnIecifbBCcJ7iwGj8pnF12JcKVhI4L0N
	nUazgYyJKgsXFG1kLESr//hbozp1iwpRIkyu69AZ1WCTNPnYZdcfRmGCQ/Tm7l7REKa
	jbralZe2cslof+XHlC+ql4Urne1pqFU05i7HoEG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654988999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N2BJveflZLFp3Yh4G36ZzR/b68+Ee8iefIDJwx/8GDw=;
	b=Jy2GDn2DIyGf2cWHJ17a6PBgMwz2wJ8uscQIvR0wW4MqRh+Vc25pJPLaIQsp7LeT
	n+ekzDUl3JmPq5vA+P9+fb48GlTA2A1Gx1/S13k/jWoUHnqOr7K0uVyQQ65vvWhrDec
	znctjrToQ4lbK2S0q8i7uFVdKrkoiitkKlCDnjQs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018155080aac-ef99e9dc-eccd-4a25-b7fb-11447a4f3652-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d706c01cc14e7a9011ea3526f2fa54a628ddf0756e102c981d51a9086e8a8de3
Date: Sat, 11 Jun 2022 23:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654988999
