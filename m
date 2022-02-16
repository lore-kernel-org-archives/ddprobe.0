Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5779F23C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645003584;
	h=To:Subject:From:Message-Id:Date;
	bh=XdN5mN5FSMvzP2K9TxXHZY2lkoe3RWfyLx3ZsO2Bs7Y=;
	b=Gyw9f+IpqtJPD4X1xmqVdw/P+9s8nwpHH3k6+yxFJPDOty6Mm884st5ejH9Z+BZe
	AgystP0oAc7jfjRkBtXWVH8RKcJloTlxCX5/LvIajz1w8VSs4fRQpLmsqX8lWxnx1uv
	u4p1gjVG3PeMA6M2lclq6vZOaD+ZKwuwklyOAO2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645003584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XdN5mN5FSMvzP2K9TxXHZY2lkoe3RWfyLx3ZsO2Bs7Y=;
	b=L8PfW/ixh+S5oFfrKucMiXtx2BX4SJazZR5Is+Mt+0foYr1W7x+8H0ZaNl30+Xt5
	0xQKk24Tv4mTKMshTdNdM5OmVgBkFMSV8UDwCiE3otsFKijetmjjQPBMGR73huU7Mt0
	eytfGAQxdBzQH/lBuEm66kVDfNO1FWigoXW/byR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f01dab4f1-c5ca5a59-0844-4b31-898d-58666788aecf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ac67ecd966a3f2dce0543ad0d662b1b928b9191ce2d1ffde754c0a1fca65888
Date: Wed, 16 Feb 2022 09:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645003584
