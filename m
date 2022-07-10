Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC611104
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657444012;
	h=To:Subject:From:Message-Id:Date;
	bh=bEMMLWJjZAfZfclxQIHGvufFgt6vXLyrqHIOyQnXYLo=;
	b=SV2w/16rpiH/FWnqrdE8u5pxT2fv0vvkJCEKHEE/nXCiZYQa+7UEmqHoCPbfJ+aJ
	swFMyqVxXFDD5Qjc0kKBIUaIEPCcLijVF1R1gUYnfuxBZVwjXyHB/quczxnCFb5YY/t
	hwSJsyzqHDHAdC7CHlgJwkMgmP920oxLHVfgpmaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657444012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bEMMLWJjZAfZfclxQIHGvufFgt6vXLyrqHIOyQnXYLo=;
	b=d4ZOnqnHyd+fARb3qDwNNlR5jt2TRDh0tvh3DKXDUFKex1oUr5bXTQenvFfL9F6J
	1r+NXRUmXcTgrHMKmc6nBminMARLlv07GesnBFHBgi7O9Ac7fTszEq8y+pjdiHqMZOg
	k2ysagLXDKPlF8VooSfVIlQRIpePRCExd2kIdm1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e75c9187-2f58ffa9-e925-4e32-a2eb-c8ec3ccdb7cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0fa1468bb5a862bb7859c22c7668ff691c7b43955b49b4c48cd89a0a7ca38eb0
Date: Sun, 10 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657444012
