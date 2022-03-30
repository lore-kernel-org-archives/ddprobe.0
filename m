Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B0336E
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 04:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648615498;
	h=To:Subject:From:Message-Id:Date;
	bh=N7B0zIPMwz9Zad4bcZi+LHUFEJf4mmfvKPIFm6nKmS8=;
	b=CT9QDKwowVMI1FrLcL6tuFk+uKyNkS5ZnAL4MY4tV6v4E12vhOXnpk9olB507KPJ
	G361jX8VtP6UxST2I/jLfZR6v/zeafx3FCxTxuu2HVS1ksqsr5XQyZSiVexpsGXMXEK
	oqswrBNx5/OYKA/gc/abuay70lOhf6DmztzYKqOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648615498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N7B0zIPMwz9Zad4bcZi+LHUFEJf4mmfvKPIFm6nKmS8=;
	b=GLcGS9r0MbUmAYcU8w3TrB80Vapb77JAbpLyWWTcwsHvtcrV1lldFC6sd/qRP/a9
	mc1hB8VtTmub4smkGftCE/DzAWyNnH8j+5CuRnLGhK7wOmpMIkVc5iY5RsBGNTCCGjP
	ZHK0BPTc91l+IiyL3fVm9fd9VhFpfEvrqNd3RT/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd9242233-780f423b-a141-4a79-978e-067b363c8504-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1129b8fe0bd9153c54d7f8f33ea8f793964d3f4597b351f1104701546c59c8f
Date: Wed, 30 Mar 2022 04:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648615498
