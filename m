Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DD329A3
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645448485;
	h=To:Subject:From:Message-Id:Date;
	bh=q1GOzIwfNgsBZJGIqPPpc/eWRr+0O4rCh/IK46K0V4Q=;
	b=Y5hog9hFkxRlDLNFXapNaFlipnTQY5d/pXoHSOsm7geiX2nMct7/jvZYL55uxSIu
	UKIW6N9Kx6x0zp1frMsq/zGVqBAKSfZgllb7m5MebcbslIep1894k48zMygcmP4AsvF
	3q/3qeQnBeRBJ4zXiOXGNkY7MRm5/HRz7/+69N6k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645448485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q1GOzIwfNgsBZJGIqPPpc/eWRr+0O4rCh/IK46K0V4Q=;
	b=MdOu1+8UD0P43mKNoHuJfMkINAC6x9wuzML3UWXWWvs0akF5H7+znqqfyPJS6k8/
	VFzWBLEzy5q6oPg2Hqcgb1PaUGWAuVb/9HS36zNHoAN917zgiB9Rav4VT6MBJiA4Om8
	tRYcUeXokeS8bgRuedTuEHZBOLrv/PbYvUy6zB0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c5f5787-fb706843-ff61-42ff-a4dc-f1e8eccb24ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1d15080f5a3f5bec256a485ac99f01e55ba35509e5b15fe07bafaac4ffd193a
Date: Mon, 21 Feb 2022 13:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645448484
