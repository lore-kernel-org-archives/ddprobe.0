Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B83179
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658682412;
	h=To:Subject:From:Message-Id:Date;
	bh=WaMMdqX7q2huGwGPQJSc2ca7P+hCRUOQVSK0Ff/7oBo=;
	b=ICSNmjb5FDEB5Jw2pcuMmqz+XxEhZbjlYB3X7adVkFWhBEbBWHfPxdjz2+FMpbPM
	V1bxgyApe9Xk+CiECeRsTv/iMkCGppyYATen20GgwoIlobSxnsJ4vOiZ2b7CNkcjY/V
	HWdg8e7tvQtMcf+NPcEc1DenoJdrvgEpj+ikJGds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658682412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WaMMdqX7q2huGwGPQJSc2ca7P+hCRUOQVSK0Ff/7oBo=;
	b=ErpUhunnGRATA6KvKsqOkl7LjnIkm1VCaEKRslFB3VSfRSgnrnaJXmVt7cojHg99
	dw9wvGUnG1w1mctVF6hT+YAh/iuj595EmhIWA0RNmzV5zqxkNvi6/MI6IiYkrB+FTR4
	++QKfrHjj3pgfyFZpfXwqRK3a74Vtza7lLzt9mSk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182312d0d09-078ad974-d4cc-4200-955d-b77e1cc43add-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 076048cf7bcec1500374b58998847abd559c4796696d10137b39465439681ea6
Date: Sun, 24 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658682412
