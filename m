Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23034366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660274452;
	h=To:Subject:From:Message-Id:Date;
	bh=1ASjcb6iqnBUIOgb6PuVwBFwCE+mLJ6ysiJ7hY/rsc4=;
	b=XyTq8z3otzHe0SJusgPkttwypLwDK67UpmCs9WwG1oKldMvQ62N17FPSwR+8lxF9
	k0oeR5vrIvx0RwUuFuE93YQqz14fp5PCKzF115UCzVKb3nmtBxysLi0D+/40G365k6Q
	k77LiAceOVAvx+3gYpYbo9A7FHeMwsTlHIny7gU8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660274452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1ASjcb6iqnBUIOgb6PuVwBFwCE+mLJ6ysiJ7hY/rsc4=;
	b=hn6rxRilvMOqmfHOnsZOgzrx4cwB9Oveav0ZXPKyax3ax+uuB5BLn2+JomDwCq7c
	gG6OO4cqJkrGwbfRr6Bo/MdlvNfSGw15vcWH403IB6E5XLx1zWvAZyEtrHdeP8cGEB8
	Nd2OLIbW3cUm4CxClRj7/hyHBAUeiHP11CdP5w5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829011a823-2654d8fc-675f-4313-8044-5539617b73e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76a93b1f3167e60cb15f233dd4651ba605f7a93c5e493635f7c72204310e7b1b
Date: Fri, 12 Aug 2022 03:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660274452
