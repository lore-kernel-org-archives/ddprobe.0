Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E1B469C
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 04:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652070358;
	h=To:Subject:From:Message-Id:Date;
	bh=O9SjPuUIoLIHO11IaCwk/jAvqVjkaV1BcmtDT3uqWdU=;
	b=TMAeAi7BsepgyXqDxQ+YoMgnYDRvjPIE4dC74CTp253WzxCN88zOv+sTA8Mk+0L5
	kIu768TtVjZSpHA8cyhUJqyTcJECMBS5ddY5UAdT+Y5jiF2p4tMGf+to9u6lvd6swbE
	XK+d/6qFWJPEq21uTjPRJ7yYDp8s+SQ7W0JcDSj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652070358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O9SjPuUIoLIHO11IaCwk/jAvqVjkaV1BcmtDT3uqWdU=;
	b=Gin0FyJMBc99fD5uEtoO1OZe4Me6YlovdiqdTDb+ihVyTrPx6SzEz5R3VoooMR+k
	dv/dmlXyqfYsid+6X4meR96yNUKmpW+dMjv27uBr596S+8RymaO1+LENSDXsy5/k3ix
	EidI9C3B4Nw2lzdDBgpX6VeA1a20fUEEi9XqCJfY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a7111cf6-d347517b-324c-4a5d-8b9f-6a79778357a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac615730b2df7decf359861d71bac946491ae3644f5c20ddddc3e9aa406fe1e8
Date: Mon, 9 May 2022 04:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652070358
