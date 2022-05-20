Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1312CA9
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 16:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653065819;
	h=To:Subject:From:Message-Id:Date;
	bh=GJCrN+S9roMw7q6w2YTcU0obAkc9pnu7KNdp74dyk80=;
	b=aF0aii+eXu/tJyi/kCO3/B2Gd2sIz14nPjM+lA3pq1Mgm9U9M0PWdC3XmqwaunZX
	deFzBhDtcvZfS1fVp/77HbhNIfWKWhnh9Z61g/BQ3CDC2IPOm+1BO+m6Lj3/UpZ4po1
	W0RYI4isQXvSrRDdNJWZ415RrUEKstHjOD9it/6w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653065819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GJCrN+S9roMw7q6w2YTcU0obAkc9pnu7KNdp74dyk80=;
	b=fhxrV2DZy61blmfyQ2/4+M1Ma9eQqYalEIMlpI6ezh5eLgBt0kftn1Y0aI26bx9I
	A0PdqqINbo8jgIF88wfIfQw60euR/6geThGuwIOW6D/I7LQKPhbpii/vomT6zL6/9S2
	SOL/7ZALh2OFgW1DvOV1swEY3RORL6WiU5qr2ZJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e266a4ab-e8ca83e1-7ae9-4e7b-aadc-768ff7621a9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c0eba22c645cb52bd1f7a301a2ac2afbc2d302f64b3feab5b151a25ea45f508
Date: Fri, 20 May 2022 16:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653065819
