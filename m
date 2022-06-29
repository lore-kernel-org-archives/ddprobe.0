Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116A562A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 04:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656478612;
	h=To:Subject:From:Message-Id:Date;
	bh=jl9lkWgc1CBmdt64sF2K1DN6rkPPVuyJ0C15G8Dvebk=;
	b=AJMWROoo8OTJTvgS+xaINKlLUN1i0NIIm9u0TCcDDSQ2pfV3b570O+1LPTy6vGhm
	oq6iabdI60xIGtAPgipnW4jtPS9/Qgs/2+tjHCw1Ijtqnc3fPcHlanSpsUKL20D6/Ha
	sxbt6CLby1jsQ5uwPtS0Ca0uHxUATij/UyIh9zHw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656478612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jl9lkWgc1CBmdt64sF2K1DN6rkPPVuyJ0C15G8Dvebk=;
	b=f3p7ZjQSzNy/Tes2Cr52XVG62QFeyRdiN2z4Uy+Yum4ksNz5MauUgP+q+dfKya/S
	0fd6EPlywqd8C8IwUnwMvG3FqTs5/m2pM6fOuKs0kgW1lmcUQX2C1d3Y57dhg8e5Sh5
	awtdw3SbJg/ASeb5qgcv6VV3wby5FIBW/ZVw7yuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181add1bb37-0fbe0ea8-b4d9-4fe3-a1fc-9268f891fa16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e47d2510e7955684e9c7fe29bc5464758062f0138f9a456a455095cd0567cf51
Date: Wed, 29 Jun 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656478612
