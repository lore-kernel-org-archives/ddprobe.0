Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBBDB373
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 00:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648687678;
	h=To:Subject:From:Message-Id:Date;
	bh=eI1gsY483NGVudsxsEzpCC5aFGH12kX2o69r400QgoM=;
	b=YTYWNO70UfjHOpAy0ciVRZTOFXrPBNfiAOoYC+5HlmkRGrWK8FyQWwEu1WNzlT0O
	+1LXXkacyVfEg8XSE+IXblhXeolhwUdMtZ8gjVLLc7L2HesxYLWgOOHWJX7U/mtrTc5
	+nyrTKVuliDtP1r1q7+joB9KP2v2S/iJquHNqDZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648687678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eI1gsY483NGVudsxsEzpCC5aFGH12kX2o69r400QgoM=;
	b=GzCuqa5YeK07J4xyG7zky9Dc4HtrOFTLsNJPL1As01kQL9xnyzNaymGFNZ/3m6Zj
	TbFHJoMp+jhaEc6iqlWO2d7zg63DaOcNSkVyY9yZnSn58MHfVbsTR6ZmZ0fytOw4jQP
	G4mucNYgnAaGJ4xx9arFRyBKOvTLWcOFhybIHK+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdd718331-dba35fc7-14c4-4b9c-b818-d0e9f458ecd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d9424dd8cdb22f198a94145029541bd3a80313afd4700ca040995b32f3438bb
Date: Thu, 31 Mar 2022 00:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648687678
