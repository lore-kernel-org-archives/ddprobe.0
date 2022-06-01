Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA34B7E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 16:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654101600;
	h=To:Subject:From:Message-Id:Date;
	bh=LsPzU2jfKIXqFoqR2CeByRhrewSaO6Bm3C7nazOK3Ws=;
	b=C2SLK3R+t8PGJkpcf50X3Hw9CEUP2a686FQLA3yOt3BA9SOQy2b3rEGOlp70XI29
	sw9+dy7HpifpL08tBqiEwqst8F3MGsOANkCqJjg5f59/jDUQ3CjdvqV7hLIWlY95VNd
	4IjeKOQMTWWS8lkpowhk0204PfUnCBzeh0J09TrE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654101600;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LsPzU2jfKIXqFoqR2CeByRhrewSaO6Bm3C7nazOK3Ws=;
	b=DO171FOWrkKeAAF2lch9EtK8GMAyYY02/lVanNmYFzjOeztkqMRJYF+W3Nxcxbgw
	8FpeVa5KeoszpF3LugnIzos4HtcHG3hiMy/wX7R5xZ4sggOPcn5E+IY4/xpQgnXpIbc
	aCpPmkQRylDGO6BF23P7XQ+4CYpfHZZUSb2qL4hY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812023644a-4ea9a6fc-c0b9-4b41-b444-436e01ffec68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19811d9e10d66831af44b72408f19ed0ab4b216d2298951024fbc41e02169939
Date: Wed, 1 Jun 2022 16:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654101599
