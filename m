Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AC31852
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 09:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651309738;
	h=To:Subject:From:Message-Id:Date;
	bh=tkMV3Xd+RGgl8dZeLCKaZb6FnEs9FWgvEhIvNaIFcBs=;
	b=KGks2EN/ZgnDmKMeJNlcWFaJmp3OzdvbCAiv5bF4l8+hsorZCtUZc9HAOzaZqlJo
	Fmk/rKCfHqq6g5VKbbe1JTouspVQfLVve6VtE1AnjzqbVlpHuOxzjtAtOlIxmAvU1oS
	vHGwnMUsDTIeo5/sW6JsgLDX9tDL86bwBffq4UjM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651309738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tkMV3Xd+RGgl8dZeLCKaZb6FnEs9FWgvEhIvNaIFcBs=;
	b=bIEVvFoOtwDhsDCju90PXWjoQWSQzhMcBzdFX3OfZagC+3D9OEfcNNccBPkInjfO
	TKarq5UcrmiHPsP4nsFtdZXV2DXYXGJpCS2MHTd+e/1ie2IPpeaY9FQgIRyQ4eEnVei
	+73TtGeH0+8tYpHdTzWyLCdNGrU6I59NOWSS7lBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018079baf94c-78fc6ebf-a794-4692-9105-b4b3a02a0ec8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f85bd5097012c1147a520d1aefdd8a63c8f4c8b13a3c6db9e5046aff015fdc7
Date: Sat, 30 Apr 2022 09:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651309738
