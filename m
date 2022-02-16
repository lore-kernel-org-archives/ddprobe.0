Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9893F1FA1
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644977784;
	h=To:Subject:From:Message-Id:Date;
	bh=NWQBPAq7GcLvUJW3ADoLFCbMOsO5bAfuj9ej2sl0HLE=;
	b=cbQCRfjEmZVL2R3+nkmoMhk3ysvKESjVkwpHevLORQ8DSd9RUjVTe2Zdhx7XhyId
	mhKimEMwU8De90tQFvNGSpub0DREqaLVQClrQzA1L8GcGSFMsVIHl74iwDaAc3Ht+YQ
	YverIrtTeYvHwYb05lhWVzKEHu+EIafil5QMVbcQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644977784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NWQBPAq7GcLvUJW3ADoLFCbMOsO5bAfuj9ej2sl0HLE=;
	b=fMpHTqkCEN6s1dTHSzHwKVF0U/jphXVmcTmsVxQzSAlbfDmpGfUHKbmppOTllVX8
	Sw9ULlvBcBbY+T29cLP5lpKUWYvRomd65j1FfzuWih350HJPUXMhYbVqCtbRkOQTyaY
	RqSWYU1H28icLU4mkI8LKDzMeeaVZoujEUf5FxWs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f005107c9-436278f3-75aa-4701-b3fd-1e780b50d02c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b8afa6ce02ba700d80bd9e1902d525134531fb6b1e156cfc5da1181607e0fe6
Date: Wed, 16 Feb 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644977784
