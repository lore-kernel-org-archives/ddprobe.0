Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BECA1851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 09:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653645239;
	h=To:Subject:From:Message-Id:Date;
	bh=g36lXhKvmWviUclzJ1qe/bFZkUe4IRtpdQKwbV01uRo=;
	b=ktubGd/PTqEmFUt3/LwrktllWnH/CHrxTs3lB0dY6IMKXZjNNqhERTVoVSZrr9nh
	sO9b1F6WyjGT4l3Qxv6Ks1rnw8Zk38BdrQPMQrsGOcBFc9sBxy2tizV+rCkqc1s5Kk0
	REc+aBljbIK9CGJFuU7pB45ZYxVvtAvXDyskPOGo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653645239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g36lXhKvmWviUclzJ1qe/bFZkUe4IRtpdQKwbV01uRo=;
	b=BBLWUU6XKQSGS2XA1dIC2114aJDoW2tlX3f5q6tQ/1PVw/tIdmCYTgTHHc1+Apwh
	Wwu0pG0aXLA0sHDxMhJU++8QChiJ4GjUMvFH2YDGnDnBl03zxELAboU2hGmIP4sUvR1
	eat9vpF4vnnOWJw6apfqcsTWi32wcXiqumjls2/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018104efe3cc-aaed6005-5afa-4910-91ff-554851252f52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 241eaa3c1ffa2119f8c8f9ff8ab31ca26202689e83ab65f4a0efeafff3bf8be3
Date: Fri, 27 May 2022 09:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653645239
