Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B613C7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659329453;
	h=To:Subject:From:Message-Id:Date;
	bh=84mq+5VAlbTDdrnJEtN1G8bw3OqbMUvySRTcbGIaHEI=;
	b=QRhE7hhPI0rq5ZtG5D/LHMEYGWBwxYwJwrI7xMhP5wVia20fpnn8+OxWsYLZdJYu
	8mobxu99TRYRprefK7nnaW8UpG+P2Bw0YlCbK7vharPH7gAEvMvP5hCKBqPYoVpGFAE
	on3mbOLIMkI/Oo2PXGHYjvzgQBlpyPviT1ZX6KEo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659329453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=84mq+5VAlbTDdrnJEtN1G8bw3OqbMUvySRTcbGIaHEI=;
	b=TtToBwYLhNGw1DwKCU/GcGXBFHUIPm1pVbaQy/pXaTBDoCRUH5DBgVt/0KjD9Sgv
	KeGMrACoY6iHJosdR3o+29X8Gspw0MUt/JbWrTf3PsXPfWH5Mrnxt8GFnnOijmicXLr
	/m7NcfMjQFt1iLB9BTHNllYLw4Ga8xT7McmtMzHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018257be1a00-d6d076a2-c9b3-41e1-b56e-a8512582e6cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cea489a6b563b33f49b799cb496fc15b385aeb90bb1ff70f4d3807fc44089e42
Date: Mon, 1 Aug 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659329452
