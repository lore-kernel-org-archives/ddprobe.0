Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C9A7A
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660023052;
	h=To:Subject:From:Message-Id:Date;
	bh=oCZqPAWTMlcOrMX/4ignTRVabXapzZ2iUJfQNbB4p7c=;
	b=lTOCsTSMGwI5gL9WVAiLPQmRaSmSLvmwwNeMKX1lcDu8mpekfRX2d+CsMySkrLcn
	J1GBZ4mbt/dOIL1vCj22ChgMxPnPnV8tZAquAA3wU0Jr/PUpL/p7y02QazKh9A8iQ8g
	oPXVyDxr+XAkwgXOY5hHKYQ5K4dcXu7Hn9Ty5T88=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660023052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oCZqPAWTMlcOrMX/4ignTRVabXapzZ2iUJfQNbB4p7c=;
	b=U3g5yEytNthkeq6cgnbepD9PbbQk4V6uS01obFkfOPzymes6M4ZqEZ+02RS+XEnY
	ehdKozY+PSI+Q6tc83mW9eTPonktIuH1yG2r4T/ukA0Z6MqcXCDEX/TFwtbeIVVY93k
	PdpRWcjN8lcZMWMjjD5ZhKDd8SF98fM/MxMQvP5I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018281159906-64b01812-2617-4fdc-8d61-9e4e05b71228-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ad9c68e12df19889023ea0c8e6417f772e4082fef243405d0ef237b058ae0cb
Date: Tue, 9 Aug 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660023052
