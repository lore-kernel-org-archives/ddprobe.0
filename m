Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DF77E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 17:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654103459;
	h=To:Subject:From:Message-Id:Date;
	bh=Q8MHWK8YBUxweVvMALS/3SjUHnZHW/fP/oZTTODRUPo=;
	b=GHgUte4w8Q/DaTQ2OAqLT0ujC3+bXZ11nDZQfJVEJAYNKFIU+7nnN9nbT3o7HYsC
	j+IEHPDvWSWeXCC0rfQk9a0nj2scYNPv7n7JXwdkOedqX75SDII2mgPag7+1TNqZYY0
	qNGgAJeqcc3K/r2H3Qp4+nNoirm6XStZ049jRSnk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654103459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q8MHWK8YBUxweVvMALS/3SjUHnZHW/fP/oZTTODRUPo=;
	b=NL8U5Tu8i10WNj4r/Lzc0zhNfIPzWm2QRppA2opCD2ihQjLxahU3YFcc0JkXyGw0
	SqmFewatZZT3+XvjdxPwQUA9EE25S7RkZ7Ha8KsWdAEoIdivYc/XZ6rIuVD5gYvQtth
	pPvvnnz2V66eVSq+4/lLM/vX8eRH5NChDXwReG6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181203fc5fc-7944c0eb-89e2-4228-9878-3ca7e93bd52b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d9e2674110f28c9aa23df7834686feda4155f8a3d21fa2ccac66486d57ee4d6
Date: Wed, 1 Jun 2022 17:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654103459
