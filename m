Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200287E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 12:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648383658;
	h=To:Subject:From:Message-Id:Date;
	bh=c3WUCMUZBZ6uBo0DbNaZe66RRg5nHz5l/tmmRET2i1s=;
	b=S8XJhaJ5XOP/P+IaVGiQD8GG7xbug/X/IHsLhN3Srvxm4usrJWSMYsN5EK3jgGmZ
	mx4GoNhsSac02S4xTVnmZrVIgnrVZHGR8zSKtV/0JVBGuslUGyPrhQC9hMyDC2sCi6/
	M6insWUI2/Y32/kDBUUsWHtStq3ub9fc5oY1zY9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648383658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c3WUCMUZBZ6uBo0DbNaZe66RRg5nHz5l/tmmRET2i1s=;
	b=NVv8FjOiuaof5nnD21TmwVsF9jWg9Y2+xsyK4FN0ABeRVeEuJ/LusN6eL8RinJD2
	hQDbNEFnUhJH4ci/ESD78G+JClLvq69ibSAZfjCwVwjC+1Vyg4UiC7heetQjRO9t9us
	FzmtZt1Cjn5/BLiL1hszdPCrhUFMsLqeB/gXZ5a8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcb528904-22b9b624-63f1-41bc-b6d2-6c0f2b69bfcb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b2234d095bf1a6f1de6ef5998d2db973f68b6065a12d4e9eff8ae10741654ba
Date: Sun, 27 Mar 2022 12:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648383658
