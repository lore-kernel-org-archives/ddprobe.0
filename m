Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9F115A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659247852;
	h=To:Subject:From:Message-Id:Date;
	bh=gGMu34UnrM4AbTOvuvOjp55k/0u5VTpE9k/PNS7wFJY=;
	b=aX7r8S+2nviDrmXtmE1aRVPypfsilb+1QLN+tiSae8hcNyM7ykgoyn/uhWhUk7Tv
	2mFlzfpRrQ4JxSIMvvjiCrtDJtjYBlWTVndy8zjX/TQ6uWWoslFqdb/pQ4TtbybTxCB
	+am1mVYT7HNHIkoNvDPYdcm9N9D7Q8SnN+ooWOeI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659247852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gGMu34UnrM4AbTOvuvOjp55k/0u5VTpE9k/PNS7wFJY=;
	b=e7OAXxqdKufjxwaUNtMrb2C2LnfYybDjV5BZPtBejhe+QD0CJ67VJ0lHKTeIsNUd
	QpnzzHVKiyKVSdlG76OQ8gC3htPsKMmoTvrXGDu+LMCXycgdWTNqhyk7bq7xwi52JYK
	eTACq7tuMfeHcHSDJSM898+LQgSp7KGx2BpXuASY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018252e0fc17-e3285e98-7e0b-4a51-bb6f-01b0e2ea17ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6e6f5e7178fac0d3633165cc9e4c818106c5ce3e1d61d48d57f220495fe79b2
Date: Sun, 31 Jul 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659247852
