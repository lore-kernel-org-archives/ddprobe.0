Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E29512D
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646030185;
	h=To:Subject:From:Message-Id:Date;
	bh=L2Ikt+ExbBUC2GyGgB1ah7n47JKeIWEj5mlsIE2zPcw=;
	b=BP0iCUhGHFIijHkzBebHd+a1vxolYkZ0s8OGmkhzKWdf3C3FCbUcnxNdXezX3+4J
	CIsXIbC0VJQ03bCwh5v+d706v3UwlYG8AMqLrhUzGuotRv05dSz31/vgn8bpH3SzQOf
	wqzQWB7EMbdhsGRqqx6SsY3eHocbltfHvf52txX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646030185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L2Ikt+ExbBUC2GyGgB1ah7n47JKeIWEj5mlsIE2zPcw=;
	b=d6//hQW+4oZmrOBpv/bGVMGdXo6n0q2R6hwk+zF787QhlTD4nDlVrgenU4RntJNb
	Gb/3y5j5clVNcmbfmg8DKm5B/UHlAUEjCaun6yd6sw4Lnr60liARcuNqVUwTLe6RYHk
	CjsyvgM3ZSL+KguAI1WT0xb6iXmm+R/lGbVtSHJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f0b610a-0d4c4afb-ec07-427d-b3a1-3f9320c706be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38db9eb2531bf6ba3a9224d92e40e8c2170fdd32719a4c589137dc34b0f22a73
Date: Mon, 28 Feb 2022 06:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646030184
