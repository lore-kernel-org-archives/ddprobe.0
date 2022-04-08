Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C58A362
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 00:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649376658;
	h=To:Subject:From:Message-Id:Date;
	bh=b9AurUI3fyy39Lj5Lm82pxcLBFewcsAuLqQrGZvePyc=;
	b=Xw3z+Zkz/HZqZ3K7oTBFjbzwl9DlaGh0vj6CWK6WYVZpcMeLty+vTtstb/AdD8Yx
	Kv2yMt1cR24xdOLcelLhmgCORZ2eQ8X6EQkcZNUdzSWsWQigNx9DGIx0P5onkHv3XGX
	+/DMmBtP5F6a6wB3AQNG/v3hAzDCw9tXq7Rou7OE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649376658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b9AurUI3fyy39Lj5Lm82pxcLBFewcsAuLqQrGZvePyc=;
	b=T7AgzS5mvIjlRnGlSMY3GaJILorg9BFs/Rg/qpZ9nAfrRHx1SVFUfX/VTxTDUuac
	IMzukYspQamVQ4m0oKcW5mzZO/DES5vqzvjF9yobuHIk0W+es8xbs7zxjyru+M3BdMg
	eCyFg6k3rNGRc/4X2t3B3gQRBqzCTd1th8KqII1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018006828363-40404c98-a55a-42cd-9601-0ea10bd2b427-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6093d87b0ff79437736249952eb55bc81a883166905d824511ea2a88d997774b
Date: Fri, 8 Apr 2022 00:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649376658
