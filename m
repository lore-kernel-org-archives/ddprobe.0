Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AA5A33C1
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 11:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657624013;
	h=To:Subject:From:Message-Id:Date;
	bh=4JOQFbfqrnTX80DtTuN63Y+5qdYrjdRlU/wFVFqKsMQ=;
	b=N4U/lr438bbpSyaube1sbSBYsUlYb6Kh/ej173chXk1S3QtwEfs9zmJJOK7tOFf/
	dFnb12voyN/7tQ4E4xVQjs/GStd7Rgrud8Uh0jE2L1LoGPAt5hu+gRToDmRu4/lz4uC
	JJk0v5Jmg9b+RWsFoY1tczngX4pA2ARgI+pleLPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657624013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4JOQFbfqrnTX80DtTuN63Y+5qdYrjdRlU/wFVFqKsMQ=;
	b=IIfiyuRWLbxXvmZz/y2CPiN/Pz/Yg0pWw36qOVxOx+8/jUIF0rwdZQxXykrV2hvJ
	qPHRzVGUB9Gq+w5zN3688PMi2r5soZuxnsuavsAmyAXEZ5tKAmg2+jg16/u5BHEyVe4
	H/n+hweA8u7hfhimPSCB05eHvCPYfxHzysG5DrYk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f2172605-7a9cebfc-7588-4e27-90e5-a518c63e0d72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f009568d18194083dafb026a26024ab094496979f2939450ca505f9f92a7431
Date: Tue, 12 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657624012
