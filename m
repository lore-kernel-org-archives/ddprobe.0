Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8801FA2
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 21:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648933318;
	h=To:Subject:From:Message-Id:Date;
	bh=F+5aXwRv5TyidwcvnKeWNpaauJ+QMBHwtqZff9uGwLs=;
	b=CQDbX4h8v6PzRd5zN+s7XBY+eDjb+dq6BISGqeVTmK96yfUosJ9BUgHwNUejppaC
	kLSDg6ygZ0vS2d4Sc/tJoBX1RFXwfibNWaugB3iw0xz6f9SJ2cW5eUfDJPHKWcK29L/
	pdqSlxI+a3qelYK4KHUmG+jQO+YkibvqcuDGZTfQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648933318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F+5aXwRv5TyidwcvnKeWNpaauJ+QMBHwtqZff9uGwLs=;
	b=akcI3VKOWWE+UG/eadIgHy96XDp29VGZT6KMGlViaXf1q40OPhzcdYFZ2vgzL2Jy
	C2nqEanBYckZ/GtUZ+lsLSy2u8yrEAuhz2Z4dLcq7ique4nX2KI9BsvJ7kDKcRiqdn0
	Rcp15wCXVzB6+BfhUNaBql3QjzZMrtCEFaAYklEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fec15ae78-b0d15cc7-90e8-49f5-a14a-d4319174bea8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53573fc11b55e462eea453cad679386493526b431d8930c55d233723727ba9d5
Date: Sat, 2 Apr 2022 21:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648933318
