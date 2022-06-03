Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1AF3D65
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 22:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654297019;
	h=To:Subject:From:Message-Id:Date;
	bh=ln19oqBSkXwxcJ7IALiaxWx+BOzxnvIbfIrjfzlpNI8=;
	b=ADWWHBUQHOoIPr0aVzh1sTj3EllGw6OBkYNSyB0+rkdVwfRNdy/MOeH8/6T4aLnG
	kBU13alCwfo5ItktemHzYEABPRePSnq9CL7BEHA+sg0vDE8I8qr/paNppSB3tob2/P3
	IiseyyJupCaRQil8NpYCsN8E6yLIIhsItoZm0yzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654297019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ln19oqBSkXwxcJ7IALiaxWx+BOzxnvIbfIrjfzlpNI8=;
	b=JtfraKXDp/O0C6VjzUbMIzbiSEES1lMz1gNZSn/I2aESQdwZpFSNfoG+X1/SACwL
	sbjSI2420NK3AMKNxI4v4o5Qt1s3GPFuM3SIgiv0ihQNhEulRBCC05br/9ZytaHaAYj
	WBBFNVIloYk6S/oA4lDAK7ijZd9/g/Qlo/LdNRCw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812bc94395-c965a795-9d84-4047-9097-2bfbb2b68f30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84a04af36e8db3dce29567054dec66c6f80afb27aad15d8b3d42599d85aba362
Date: Fri, 3 Jun 2022 22:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654297019
