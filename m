Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009E7211A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 11:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652440259;
	h=To:Subject:From:Message-Id:Date;
	bh=5cQcG+f1BQb89Ky/okEGjYpWAjIMnZmM0iJ/8BXDvyU=;
	b=MEVau9v1/FVr+cahPWsjZO6w1o/IquL2oo8dPet3dj1eZoLM46dMDLu/HHsekgSZ
	Q9hV3xlOPUv/oGazUfNQHHBfE9LvL4l0Mt6drtyk8m6m+aZ9srMClRHrejiCfe1kazR
	P3XOcerRkOkaL5hRVsEv1CI3WvSzcCDqExQrUNgA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652440259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5cQcG+f1BQb89Ky/okEGjYpWAjIMnZmM0iJ/8BXDvyU=;
	b=JnJpmQL74brh8V6HYYZuSXfryRDVNj5fBmsK2ogSVP9/KyMQ6vlD0U8LAvUhD20H
	qhMMFYzJui1VN1GhLqkZkLJ9K4wwJkWnhU8vN/i1D2Vzjxdf7WX3LosYY5VG4FHJj8I
	lxPw6Lko0JEmwWcrCxuBtawzRLGVnIox74JCqSF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bd1d5ab6-d9e15ad6-ed2f-4f8a-9591-f7375aeaeeb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d36d6a30d74f314f28f10b71d9f30375f91b4fc94d717124ad34f2d865a6beb5
Date: Fri, 13 May 2022 11:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652440259
