Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AEC2F36
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 21:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657401412;
	h=To:Subject:From:Message-Id:Date;
	bh=Vra7fSkafal+vsMr8QvQIAOgdsESu35T2wMD9HqJEew=;
	b=HcJN17Ha0kv4scl7GBVAGCEiunm8wBo4UprgTK5m5AnDNRCzsVmgNn58FxhhyF1p
	ta4qj6AApvZmlXnGuF0vZ+fyYKUCQrHnZwvHek3dURT3wgUsSBQGLBKMAlXe2b0MtA0
	7ebYXiime9rsy4Jj2OBUA2Ioqs0lG2iSQ5jNHcF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657401412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vra7fSkafal+vsMr8QvQIAOgdsESu35T2wMD9HqJEew=;
	b=KTZp4PUL4fcSLVoT968vW8w2gKb1hD8PqRbonQyXIAlWJvP4YgHEjweBxco5h0Mf
	tEAKQBfrX8jzwf78UQxWb1Mu/URy6KvcA52Vp+DpRuIaxi5iOj9xj9kHORKxoImVlgR
	ExBCIkn7FRzi2nEvxWFVDQKfi8UyPYa7ofYhZrBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e4d28ae3-bc11a817-49dc-4a1d-9d80-442bc6168ba8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1760f4afd74ef5984e0f2a4558b60e06d6c10c2780a1c5c706e6fbf5d8a6bf07
Date: Sat, 9 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657401412
