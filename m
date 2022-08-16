Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D3A1FBC
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660632053;
	h=To:Subject:From:Message-Id:Date;
	bh=DX32JdnEVQiYPoYf5jIi3GOE/TzU74T8sps0olva724=;
	b=U7UR5K9tPPhIGH0TSzQaeEASTplQhl8/EXva6EfdBOYZDq3b3tsjKZZFf2ovuULW
	WYtrs6boLmaTPVikCHpIrKceLA1vP+o1gHINEXdwWvo2mctrxPw2E7ZpoG+CZo9RyO4
	ezTLCEJZPvqa+ueLeECCTnZkrIbIg2+nEQ72P8as=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660632053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DX32JdnEVQiYPoYf5jIi3GOE/TzU74T8sps0olva724=;
	b=Dd5ADrM2v9NhymNSuSSKJH8ISPmwCjweOXT6sa3W5wJspW8xnaVWyE+KHO5o0B+7
	C4P6Ow7MEbuP35XNM5rEin9CH2Ksja2aSz+Qn9Vc1b/kvML2+2hh5Pfs3dkNxAphBYA
	pKWPlmqyeShPvOQB9zgTflcxvPymoKPjH0e7prj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a5623340-208a9dc3-0d76-4ed1-b40e-c4aacee9286c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f87a47e1288adc845079847d5aceaf127b8c7829618cba07b40fd743206a2ce5
Date: Tue, 16 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660632052
