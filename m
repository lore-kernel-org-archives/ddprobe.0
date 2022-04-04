Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068D923D0
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 10:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649069218;
	h=To:Subject:From:Message-Id:Date;
	bh=+nj166lrVbOW1AiJBAu6JKJtD4LghiPfmUFp2w1qcCA=;
	b=HKmB2iQwXT6IKA+NX93ObFfs/zqpMypcSpXccQrkZPAIEyRA2qhcfCwn4txILXkn
	gdp/i2lXhHllN759u7DM1Wr/QADDdnZsYN/WvrduAdHw1L4i9U7zEpMNTEUha61EbPP
	Pb3PKkrmd3WW7H/BEkyXNnhaPBHREe7UUkSqiy5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649069218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+nj166lrVbOW1AiJBAu6JKJtD4LghiPfmUFp2w1qcCA=;
	b=cN+E0Dvz9HrB4st0Hk5unuDq0tb88Q+UzB94bWM7H4ZD6tqiRWaMiosrB8SaOgNV
	ur7Am2E4mEZd0xtWsNoIdLkyr1268vF/ct7JhUMYAPNNkAR6eA+R261oFLuQdLCxfEl
	+8n39ywga1DY3ZMFFXs2teNPxnxNOgOJbbLIGcD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff42f5a11-2832e473-44e1-4729-8704-8b4815cb1c94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58d751a4e7b4caf36a3d9856631cd8b7067be4b9a318ee4b5202e04af48b337c
Date: Mon, 4 Apr 2022 10:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649069218
