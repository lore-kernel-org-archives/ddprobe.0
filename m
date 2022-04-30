Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B591852
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 06:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651298399;
	h=To:Subject:From:Message-Id:Date;
	bh=tN+HWO/xvXw7AsOcNcP3PAT5A1/F2AoGTMBSMTjPNU0=;
	b=h5S6GYWjV5NwJyk562kgo/9FMclrFmad9ZTYtiF5mfaI6tNC5nY8Vf2lqNocKnYu
	hgBJ8Jix+fd3d3AJJV/xLbvxLc9dlaRog4jxKXU3EFzVxQ965OWUl5j1H9GajWJU8ga
	sbyfEOLGG0yF+gTEqXaQt8+SQynSj1ZT7Ram0BNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651298399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tN+HWO/xvXw7AsOcNcP3PAT5A1/F2AoGTMBSMTjPNU0=;
	b=d9EbmBVGM2nSyFc5dGSKnGhJ26YpAU/NLWHCtn9A6nBMkaGfnol2NON0yX2i32xX
	57Ov9dDdfEYGaDwhEtLfphsypaNxLiz6+jqRi0olKNQL7wKd21kmRJxwlcPtXDSNhiJ
	s+Va9RDxL6vKifn2HhQe+YNKI/D6lNamFT2+yp5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180790df078-85e41ef0-317b-48ee-80b4-33e92b62ed12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: befc72bb5beffa0a60f1e35a3b2e5075999eee7f9051a5c679eee81cc607d162
Date: Sat, 30 Apr 2022 05:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651298398
