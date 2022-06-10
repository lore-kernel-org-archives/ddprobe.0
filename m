Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5CE7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 01:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654823759;
	h=To:Subject:From:Message-Id:Date;
	bh=WUrWWNclG0oI19c3BnCXPAI01Uqe8vzp67ot0Y/W0vc=;
	b=gq2/jN+31Ijs9LbygELtkiHMno+kx7dDB8d1f0ZOzxPsz7O+d1DRo44aiX62qCAD
	V/aCpyO4/ECUATu5WEL9+AAcEXWWcHJrue16mHeGBZdozAOcbGoZlbMc9vXyJXRwp3/
	ZNA+awhRrsZfwStUbN+1/mf2eeTaBW7oOfvJBDUo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654823759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WUrWWNclG0oI19c3BnCXPAI01Uqe8vzp67ot0Y/W0vc=;
	b=EQG8TmjiPMccv5o1epyzmUPKrnysQR6IP2aeeipCP1maFQRFX3Ip55jetBZ+Yuyw
	6d1mnDBdQDnhHALuMfTsm8+xP2bTfkUCu53wRtMb3wYp11z0sw8ZGmV8awfKdEWsDQy
	3fnuyF85gv6iEaZd3UrsoByMHOchvjNe2oXZPfyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814b2eadaa-9a8d1049-26ca-4551-8a19-a0348ead6b95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c784a7aa004f8ecdc8200645a5fb4d1db3b55e62284c69bf4ca5d5edb2c2c814
Date: Fri, 10 Jun 2022 01:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654823759
