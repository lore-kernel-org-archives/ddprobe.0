Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4207B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645906284;
	h=To:Subject:From:Message-Id:Date;
	bh=uW27mN3IFZ/ppMQMiFfCREnonf9s7NGY6wxXBEfX+w0=;
	b=m2ir3yTLeJF3yZBeJ0mmzjuP0WRemJGrajvKKqZBJG5rBwVqHkORA6do/KACcP8k
	7U1tyuJoO43cXzZgeCBFAGyx4C+ISB5CI7ZLtvyWWtQKESUPYVEQ2sked47Ej4Jdkoi
	uVm3O6SqUuFN69dXH4COCyVo1dPPJsF8RpYIzWI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645906284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uW27mN3IFZ/ppMQMiFfCREnonf9s7NGY6wxXBEfX+w0=;
	b=EDR1fUmBiaRe73UYrzkr6Ue4SprvHWsI0zyxaN7lq1tOhJMn7X2+uj8ImX2STiD1
	sjrjdaVugfLlcBwc4JATGoc87NOPJvG5PL3ddIDUBRI2X2ndw2lUZPT+YPCfc8MV/+j
	top61yDRHNvIfdYUZQJLHrFSTUGIOeYzaHEvkIak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f37a8d0ee-c8125b48-7122-4493-8ec8-cd9c610eaaa4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b108615ee23fec109ffa5dc7c42f46692ad7c18f46f202d69c19a1e9ec6c1c53
Date: Sat, 26 Feb 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645906284
