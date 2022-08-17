Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432A423CB
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660713052;
	h=To:Subject:From:Message-Id:Date;
	bh=0jE/l4mS4EgxWGeg8pPknMQyBNeIvCsdfJ/LLTwxq0Y=;
	b=Nl1un71kI28g9YLF2dEbnLnUpT3Dl/3EUasYdBjyIua/WJUAhbSuB1xqto5Zs9P6
	H+s4R129hAH9WZYpCNBiu9M3S0F9xQGeRqPeuBE3OKtYAyDXs/s2cAjs0KK+MVJGrsw
	V0UXnxSb/fDCrCNnqM/HHDt8zLxe+hZ/niadyRoU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660713052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0jE/l4mS4EgxWGeg8pPknMQyBNeIvCsdfJ/LLTwxq0Y=;
	b=UUOL3xa6FQ8sYSWpkTay7zr68ZxR2DnlwrJ3fbyWQQHYIb37Al1MI+RG9ZMtZd0p
	SKdxxe0E9JpOswcXVyYRrkrBCOR+xpTVDf643iEh40EnpacLZxdLK7KTApbEwfmu0ex
	BqH+y14W9zJVwwOQmQ7KfSH6LL2Cl6/tfPBEC01M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aa3629ce-1c8d5fdb-e3ee-45d4-a76f-131f86787b3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3832ea00139aaaa95204395e1beb1f2bbfee68ffe7ed4ab8c59ff5a46d8d915
Date: Wed, 17 Aug 2022 05:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660713052
