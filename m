Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D69EA4
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 09:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655805359;
	h=To:Subject:From:Message-Id:Date;
	bh=hVedSwYCSR1MnsW0SdGs6B5XcC362CHT3to7vkpKCdk=;
	b=NAbhoAJk9a4XZuxa5ATCmitzL9Sj7jMyIv/GQklxq3FpIhC5OhSDBh/xEmZ/qsdH
	FWpvHFnxdzyd27d+qdrOZAqKP5WkpsGBDsi+ZwA+1D2qDdyibg1p4gz3Wt/bruP/Wm4
	PSoQT099F9P75t5JuezLq0jdr8NxAjDOAgiVas1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655805359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hVedSwYCSR1MnsW0SdGs6B5XcC362CHT3to7vkpKCdk=;
	b=UNeUWQyvZjeEoZNN+ThwZjdPDsn0bJ7lUGh24DyrfWEWNy4Hs2QuxbiqreXV6HfO
	UTDa/iuOz4pHGoevLsCCK4G5MtlIWSJl2ZqgObV5cfImKJ64oaNmEgs7eR9kQsKY8wR
	Y73lEhW8UrsNSEtAnqPjfs01qje7tDvZLqYtIEsc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018185b0b48b-b6a2c2a9-9c71-49e7-8f2c-cc547575501b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c061a20c1d845fc327042369f321d3bd4a7c6b432798d40e12db2089fce62559
Date: Tue, 21 Jun 2022 09:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655805358
