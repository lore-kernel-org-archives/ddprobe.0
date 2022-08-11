Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED92179
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660177252;
	h=To:Subject:From:Message-Id:Date;
	bh=n5xsidwjTdl0EBrx5iN3ZvQtM2WHZrWFQe9LgVuvUSM=;
	b=fcod9qzIxNwb6H1QfjfZ7RUcDCSPAz9tujk+1RwRCn+ggz6hjt0SiNGxYMqOUAni
	VUHPDYWuiGIDxI8TaBgJ5YaWn37ahGwP7aQxwd5rIUDDYscdPu0fgOtnZeEDcUU1GfG
	dindA/jQqzSJaKcItXrqSe84stTF50w2BM0KpR80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660177252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n5xsidwjTdl0EBrx5iN3ZvQtM2WHZrWFQe9LgVuvUSM=;
	b=DnxTf+O0KgDBrzW53UhyKJIhtHy9O4AC2zL61dz/zMFbkvd3rwPa0Ip9HkI90iBA
	v5j1MFP6Uwi8zb/rBivQPI7SCv3em6GFA0M2Y+IoLuQZ6XUJckKe5oE+vLGu70n68cW
	Y395oSqZkhhB8TrGniVvscWYZ6YXDtALNIs9vMXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828a468125-defe4e78-0024-4cff-b021-616187414005-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5175ba30b33d5fa658b3db43a4359570bdfb996dc13a869d203deae07e351a74
Date: Thu, 11 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660177252
