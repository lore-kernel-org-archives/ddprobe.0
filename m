Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC5810EE
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 06:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651990618;
	h=To:Subject:From:Message-Id:Date;
	bh=nPuTsKnwN/WC9Dvqes2Orkgg8RmTPIaO7PosUxEFnDE=;
	b=C5W+VIVjEUBMshFW4zhhX8DhcI/vUaiMi5VisSmLILiPpbuPLmUN9JPPIC71UAHg
	40RZ+aKAm0YwQvNJbObtBd9IQ9f6kkQI45e8XiQZAo1vXDdlwDKJUU+jzcAJ5heKwb2
	oinOErXNXq65tzCGtIvABUv5hXG2sR1nqRIL2vI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651990618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nPuTsKnwN/WC9Dvqes2Orkgg8RmTPIaO7PosUxEFnDE=;
	b=VIYZ268dVmjJszN+GUIE3SLPH8eQ1muFvSOXHvCfCk27o52VG42a3yzx9refoINQ
	IbmhWFhHyoDLGNB8xvrJ6bKzr/QfRVRGMU5uwD1stFfqSdsBjEvIt+gGtL1ssMbK2fr
	AOrlCb/+0cw2zFYgvet2T7n2Q/hk72o1H7x0BPss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a25060a3-e0c46228-9eed-4810-b1a6-c1a934069ed3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac767cd3299f9ec68c17d795e47ea47ea8c69f2be1a55a91d5a3293b76684ffe
Date: Sun, 8 May 2022 06:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651990618
