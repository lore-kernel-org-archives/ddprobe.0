Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F993361
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661142652;
	h=To:Subject:From:Message-Id:Date;
	bh=IKV65sJrcANNv0X6bODVqD3iLMe45OjMPKGbgzS+Vhs=;
	b=kvFkG6PNAW2S2KAchzZaTuKoSvKRTmrb5J8JnLqC1C7y2FzUng+kqvSnDYaLVoRh
	pqHdhvjEidzdbTIrYteWi3LFD3LLHtaPJxWRNwE2NRuDpz+qMa9ODofuvaMNDzXvwaL
	Oa1AUVm8JHKOmRZH+IPMJjmEXw4K3Z/UPlgBYymo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661142652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IKV65sJrcANNv0X6bODVqD3iLMe45OjMPKGbgzS+Vhs=;
	b=KwpQ0viJbYe9Mvb2yHHh8gsfI9vgdmiHydM8olwPUOu7IO1TMN/TNqDVafSm6t7W
	7+Ju1a2gxd68OGBSfrHKdMw34EkPbzLclTgAES8NJCtRJ4Cfx83wymas6+pWubwzT0W
	fpVsqhss4Q6nNAstChA34VDYvJwJU2c4tnfUQFdI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c3d15680-5ca405b7-1fe2-465e-84e0-0e9284e1a9c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31f151de8411e820087ff4001caabd9804b9f07af1b17982d8dcc20a82fab542
Date: Mon, 22 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661142652
