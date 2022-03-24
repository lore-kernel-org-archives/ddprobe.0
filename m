Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FE87E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 04:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648097038;
	h=To:Subject:From:Message-Id:Date;
	bh=KihgPtjeV1AaQ5xs4QrODi1I9AyjWEsDNj5iBdEi7TY=;
	b=MVR90+bCbAdQOrWOzyUWeUGTuc/LpcV4gdSjDfl+wyeWw7KS509ixE6Pzkg2bP6e
	pLL8J3CqHYJJ/kv/gzU3fSjB61lMGCtOL7Vsd3rG+QKhlBnjVBeDGbZyK+ljmOTlmRA
	je6j5tNOoA6N3FV9d8YTZ8daL1fyjxSIZ5bXRW28=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648097038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KihgPtjeV1AaQ5xs4QrODi1I9AyjWEsDNj5iBdEi7TY=;
	b=G++UCZf840j9zhOgu6Djoj1Il4zknkka1hCN1jbOVNJ/5NtPj2n+SvKHEpXsX27N
	3FFT6Qj/OpsXsiXxSy20wVYI52OevTGYmZFTgnGt7Jldj9VMnt9DgGwFkuZKjB0/DO+
	Plu9ipkemcZ0CDsxGHwpSt+2k7l5NNAIIqYzN19Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba3d0fbe-ed29b8d5-6b7e-4f8a-af60-3da8dad1f16e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afae202fa2ca22305a82838e6dae74d958684c2d7a8bb0a17d79f9e8ef07e7f1
Date: Thu, 24 Mar 2022 04:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648097038
