Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152F2368
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 00:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650156898;
	h=To:Subject:From:Message-Id:Date;
	bh=Uj/uMQYSuT9pmu5x5k64Vf3RV2ZtOEjCGxhhUwP3cQA=;
	b=ENcOtxS9ddpTFCvI3hIvzhFZY02V5Rp5bhL40Lat1Cic9tTJNSHrSYzCiQ10dHFw
	XsDmdk/ArCf8/XNmp5oO/y6ABXwx16lfgfk4vG2MHtkbGQpyIDFRNQAxS0ZtKVm9xak
	0jlLgVGcZc3JOEyo/OK5INYVVDVVtpzxHNEd5zrk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650156898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uj/uMQYSuT9pmu5x5k64Vf3RV2ZtOEjCGxhhUwP3cQA=;
	b=YsddEDR9alUeB9xKr1mo/Y/FbvjDS+Os+mIyhRKAlLI1RBJ0UJGZ27ElY8s9q7EP
	Gr1GSFRsjSn13Nx9b7pnndYLPaWQDcwpw9kZXVWuWIDyoqddMOoTQd5vv+7LQwd7u5j
	VsT7f+9UH1AS3B/xiENOI7W4UnLRe4trfRWtlj1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180350407da-c60de20f-2a95-4b96-aee0-d66cf7ec2fc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52dc4fdef7de3f8ddb76e037cecfb7775078ef3c20559a343cc54fed3bfa5892
Date: Sun, 17 Apr 2022 00:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650156898
