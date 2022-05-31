Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA55D3205
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 13:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654003079;
	h=To:Subject:From:Message-Id:Date;
	bh=gazfHCWnL88P23A7IAPGMTI65ADx2TMSPVOYfKQne6E=;
	b=AmIDJi+qmyleWapZog5/yf5jUnO2wuHW/y9bbrIOLApx/VOUvpzLn33k2tpqZywf
	5dpzHEROcUcH5PkQivhkX+NVhtF4xAnAOQGtkCAtDx1A+K4rRToO1WPbPxQPJ+vMtg1
	k3eEdIFnbXt1Gf7g97/szvFhFO3+tSbK0FqbepDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654003079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gazfHCWnL88P23A7IAPGMTI65ADx2TMSPVOYfKQne6E=;
	b=HJhwl+VmwCjdjPvhNXf37D5K923DIMIYZ3ti0/+gfLvuSqnB6Dbc+3smUfGlVhP4
	r4EQlnsVC5BCRooZenW/fLSFslctXR3QN4a9Hp/IxAMCn2yhEdD/7cEdi4ijRx2u0Bi
	dIGuuUsTE0tf7zFGR02C7J1BI3xEOlX4Lpu6rPso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811a441846-aa474cdd-2e9a-46af-833f-4d655fda1583-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5865165378652dbdd272af5fa59f897d194afcb38724c7f0e30c42d02f15ba02
Date: Tue, 31 May 2022 13:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654003079
