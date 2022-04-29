Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196AC10EB
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 03:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651201678;
	h=To:Subject:From:Message-Id:Date;
	bh=CnOhAYBRKLPorOm88n8rspltRZXchvQm/hl9e5GMB58=;
	b=YtszwnZT+83r88x2fIDl9SWnL37U4VavqwWA5g+JQQEEdv2570btvyixP1GqDLlD
	PodDifIJ+UspjocrR2Wg2MylITh6FTLIr1V/GoqT5bkC51fYQHEqFQIke2IoavME3+/
	6Ocuh0VIlgQ0ZAHpMx2CZthFrnLT4VQugP6ooxm0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651201678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CnOhAYBRKLPorOm88n8rspltRZXchvQm/hl9e5GMB58=;
	b=ibSGR7BfAsJMmmQ5Ppsokag2J5dQ7kn4v8jaruUnyJn+RoZgZrK8I5H6upcE3rq5
	uORAr9GL2y+buu4UyhHruyYiOysE1w1ZxTWmsV1D9f3K4ArLpC4WhDqEgX8017vPEO5
	yhPjTcm0ntJAAd6bowkK0vd05ftq4S+/tNqIPJ8E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180734a1bd3-49487ff1-4e55-401c-89b1-cdb5d7b677e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db3f0f9fb8c9c66f9d5273ef12c0f7b65a016dd58bfffdd20e932d3a8047ec76
Date: Fri, 29 Apr 2022 03:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651201678
