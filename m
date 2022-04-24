Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253412F2F
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 14:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650812038;
	h=To:Subject:From:Message-Id:Date;
	bh=ILgWMIM4tP7N6R3sqoqZkNbVe2hOchPFYlmtIy4UJvU=;
	b=Onqkhnqpdy3Veb/7/zYJZHF6TCm5Qsh33iwvECK6niplLZjVtohhiUA4BjUQvl7W
	dCfb5keITBVlpOFegyPdEfh4giH/qD4hBmYWhdpexIP2oPAHfBu0e8YEKMoZpjirpqH
	s3MhKKFUfsY5huGNMTx7qvBytWWLuaImrfi3ACaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650812038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ILgWMIM4tP7N6R3sqoqZkNbVe2hOchPFYlmtIy4UJvU=;
	b=C5m+1lVbVw8nCfaoRi7P1RwqG8LtM24F8/pFfjSfmRI41Ong9qhVOIluignQ2UEp
	CN4V5y+3fLG/K4BpHwynADAk9nW8DUlqTU+jO+iFM2J60W2Z6Af220ZnGC1Y1N25ZTg
	Pz8axYP+FXynHHpY1NS/tkJmvHUie8rQ6D09uSNE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805c10ac9a-a408cf63-a6e9-4d4a-8a8c-6dac068729c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10adb90518ce673b7ed5adb9dadd5242bab9ad22ffb681a249fb36db78144288
Date: Sun, 24 Apr 2022 14:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650812038
