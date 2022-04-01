Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97097B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 07:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648798738;
	h=To:Subject:From:Message-Id:Date;
	bh=/eim+gF1ypeAC02DumKzqoaEu5pVpIbJExK4TPf5QUo=;
	b=bIk05cuLNrfdh88vELat67iDE/BJicwcUYIG/Wiz8k41cjZBFVg1x9Yi3PFYBrY9
	3uWsRhLEkBI2qSqAf6Ra1kHd0KuNSOn1PCnKBb2PQ1ckAtgaOxhTP4vmKsD2JmKEHSz
	ctxPvP/Pesrs3qCYnDv9Q2kh2vXP30jTh+hi8nNM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648798738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/eim+gF1ypeAC02DumKzqoaEu5pVpIbJExK4TPf5QUo=;
	b=NOnv+tNmapSymJ2znBavPT6IdKkbNNmtNvYCg2nXvwPK7A4z0zqrJxDu+iIwsrZU
	aMzO/wjW3rziMKH2qI7hsY7P4h6tevEb6sfCre60/WoUARTw3/6LuPBtx/huUlHIxFw
	uYbrXXUUH3LI9nD0Er+J7HYuJh31HXMsALzQoQ8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe4102758-c6792a34-bd35-4cd9-b90c-a2d4e67956b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d5cca1a73de9246aa7fe1d2b3b72e1e9a778b3fef598c5a92caa52336bb5de9
Date: Fri, 1 Apr 2022 07:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648798738
