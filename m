Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C284414
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 16:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657642012;
	h=To:Subject:From:Message-Id:Date;
	bh=23Rt793FwfNaZuy5tlsTVuPU1kNVWXjrWYCBgKfkWEQ=;
	b=gNDY+gvKy0FqqqCcde6EGyIICdNT/rEOnN9HDvjEkmnDd1ZbyuzKiQBFBjqoBIcK
	lK+y8hhtXRfhM2eb5KHFmP1MXR0v+DSUboNTisc3wMloPw2FvsUp3U3b/H5r1+8sln2
	fkG0IBsZ3+6ConudRo7nnlFIQL/RPHbZCUGVuplA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657642012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=23Rt793FwfNaZuy5tlsTVuPU1kNVWXjrWYCBgKfkWEQ=;
	b=YkqcwnzG/ZuzKGOSFN+BjjL5nBbCQ5RBcMA3Pg7ZWE0rgZMG4FgLOJLVjuse5JlS
	3i1MnNSJ3PSwioVI78YLNYEUdSu/4YuY4mTXLEO3zWYgxvQHVIMUIjwCcAOu/eFMYLB
	VEIjbYodTLB5tH0hnjlAbSmWEitbQjq2h8a0NbFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f329ce86-8d9a94aa-2c2c-4c48-a05f-9deb3fce9320-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cf06f7a3e1b48a995412a9a02ef0d88abc8a2d905418830766a781193a34b3b
Date: Tue, 12 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657642012
