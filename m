Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F068187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645025785;
	h=To:Subject:From:Message-Id:Date;
	bh=dRitMDpVSC6gupm+rwha37UCppvLdRSVRbZCoWMn2eo=;
	b=DpuJsWCw1L360nlUg+qJzGTVUskh548Zu/j9Ippq6JTspm6opoFHENmejT8nZdDR
	cVSqe8Eq8QExupAcyzQpZxZO/bNbiFl/HflEqlAtSkbwIsEk3GEKC9/a8HxtNq0IAj2
	dybWHg7TFqMyWuoMgeJqYSJ9C2HV2Q2KaVkUFazM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645025785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dRitMDpVSC6gupm+rwha37UCppvLdRSVRbZCoWMn2eo=;
	b=fjxJw4ZgPCTPnddg72zkqMUTu470rGPOVC0/Pdea8xw9yWjN2MSCMCKTxtAiswVQ
	qpninTLLlvCgiAEtRXeYrrTjznvpggGwBBXTC7I3R36uDzYZat4ayQZ5EB1jzz8YYPO
	kjlzqBKj+op5waplsNeo9QFQA4w6HlgSk2xSp/9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f032d7436-a33dda7e-2809-4433-a614-989024523c7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1faab0a177790dd7d211a4b3730f14b9e0dff56c8562b98ce802ce29d02369f
Date: Wed, 16 Feb 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645025784
