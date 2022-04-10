Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F53A20
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 03:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649559898;
	h=To:Subject:From:Message-Id:Date;
	bh=pw5TAbqoWI51pPFFQ+2kkFRoTnyLMCj2qT+u5sn10os=;
	b=f/n2nzWuG8gjJ2092k71nvF7exZ7k67DsaoNGj7KaDu/1rbsS83q5QO1/fVXzuz7
	H3Q/i7iNgkWGjGoUW020+9x16Vk4otBBHoMuC8a2XnCpcXqM4pDG4lpv+sm6qe0frYj
	PiZCtqbe4cuaGD9dQlMrUyNaR4fTMQo+0nQeJXqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649559898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pw5TAbqoWI51pPFFQ+2kkFRoTnyLMCj2qT+u5sn10os=;
	b=MpnbhnZcfBrp3Ty2X8NJOzXAjbhe8nsjT7ehkktJu5kPXZoCdNSkUHqh5hh/lELx
	hpHzWmq3wxDR67vaGIpAbcWcf1C9nLiGy2SroR/Ytbt/tfTKHGVxVCfh9PfFP9m1d7X
	Dz7Gi1LO9j8nBAvnTFcmUlAltJ6HB/gA+7cI+k9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180116e88af-79b3cbdf-c470-4928-b51c-f0a8fd8fa946-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed45da9a58d5b0346e9a4836c1d1b355bedaff57240cea04196957d94fda809e
Date: Sun, 10 Apr 2022 03:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649559898
