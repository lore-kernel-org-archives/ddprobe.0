Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6538D28E8
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659178852;
	h=To:Subject:From:Message-Id:Date;
	bh=5rnH4DbFoJ9lUoWWM//j+72BTl+j3dU9oPw9jqEUepQ=;
	b=YZBrSEzF23XMshk8onakfNqlfqdUVSnS8CcYyRJ8M4QAC7vOIFzM/BlmJ4zbz+wN
	no4Yl9XInx2Uv1SU0Zzt/igriDJ7PMSB+nHqAxxggQe3qN7PvpUtLLl9D6y1gUQdfXU
	HFhSEmPD+739wzfYjtX9cNhOK/256KushKlBEgrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659178852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5rnH4DbFoJ9lUoWWM//j+72BTl+j3dU9oPw9jqEUepQ=;
	b=LCGS3hfGMDltT2p7saFhll3z+d8kf+5DjhWRywOypM9iYQ0z21tBg9lSTTWuRenS
	wbI2SFQl0yQML4U0Fvb0B7zw0C2Nh3GSeBVwPXPi81GLY7aEiAJ78W/l/3e5ifwuTDn
	KBdy82NrJhbQFFeQ/yIgLLDsOXGZwRffhlr3A5g0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824ec420cb-76cc7dcb-5a15-475c-b5e0-de2669278888-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2181f54f840d9091b220da6cf805cc4c0b30b7f0cd6880b0ac4ac5e86cf47d7a
Date: Sat, 30 Jul 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659178852
