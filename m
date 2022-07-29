Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A19E77A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659061253;
	h=To:Subject:From:Message-Id:Date;
	bh=ipokoJtJ5U5H2bvvxKSLLalc+906te7/LxxtM6DDXSI=;
	b=QzM5+rUSVINjsZ55BV1hTNe9TV+rGXk8vZC+LUb3F+xhgeBjXoBGolwU8HxzGc3L
	Od7jDqtsMZstcDASexpcIpZfEtZkKw/lUEodgcEs39DZPuJy22Vf0owcAlkGfpdXDvz
	oWcCn9VjagzxYxcGPeK0oWFd7lUQ7GFN5cE47siM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659061253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ipokoJtJ5U5H2bvvxKSLLalc+906te7/LxxtM6DDXSI=;
	b=i03RH6X2NJsMD4SzoFqQ1tYQ3PMbCI54ue9w+N6aN0QVV5/Iio3ngHI3iQyMymQb
	V0+fiXM9veud6L+UbnztJkXx/TlH/WcL8zLXo59L0ZdWV/4K6Iwczvg9me9ip1mNPn1
	vUR4QSOdW1EkbYGqOCNxdFDXy+FdP48+qa6oAXi8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018247c1b1eb-6a477d87-38a0-4adc-af10-b5b6700001ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67206ae1f0927e000dd7565fe1ee56dbda74f1ba758b7925c2e06b861de655a3
Date: Fri, 29 Jul 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659061252
