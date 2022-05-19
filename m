Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F30D23AC
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 06:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652940839;
	h=To:Subject:From:Message-Id:Date;
	bh=uDPlkXDOV3+7IS7q9NPfiaFAe4hqG7FNVkb2IppFP44=;
	b=bxUtXKfNq2ua+NRewsmPGNQ37YnQPDNygVTCVBcjugJLz0czOEdcPWV7By74S7Kq
	dWWhUDDUTW+BELJV45C/+o0BfLIJB9/Y6ZZHZwz6G175KlKe2Kb/XxPZoGvY+afuPs2
	bLVW79VOIF0MnE2qWjiF/plHYfPRmrMbaLl2tRVE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652940839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uDPlkXDOV3+7IS7q9NPfiaFAe4hqG7FNVkb2IppFP44=;
	b=jamBdVEBn2ybO/Uy9wG9wuauw97pU4Q9whUFdd+trsTpyPYvWOov+CzoW2XYr+rt
	CPfoUGZv+nVFh/ggrqMxF1EYOBkqzjzz1pKKvqmUTLGLa7N8q4/hdphBnR/SYloCihR
	885M4owkSNZW2o42z6eev0vGLU69BOJ827Rbga8A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180daf399d8-1ba8a2a4-93d7-4aeb-b100-09c782f7e0d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 260e85220215e5f0f2a0df4027b0e2cbc9bfa17e4392c199df117c3ff46fa0a5
Date: Thu, 19 May 2022 06:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652940839
