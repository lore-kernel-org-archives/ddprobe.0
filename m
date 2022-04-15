Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235B07B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 08:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650013078;
	h=To:Subject:From:Message-Id:Date;
	bh=/3qsLNNSeaOQerPsIS7oXhsWUuk8f1/PsWRSuyLZjW0=;
	b=Fe3yIxdxBpJ7h6lwJbObQfWIEvbkwQXDggoUxzoeC8EgDjhR4vILSq8ElXwSmgy/
	8a8muQe8pxZDuVX1WHqRTr6xP57dTl93lQSwy1+8StbEGO1LYbWy2e6is1wJeKzYsqv
	vbf3S6mpEuyYRG3j7HKROue7unGi168OFCpIQois=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650013078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/3qsLNNSeaOQerPsIS7oXhsWUuk8f1/PsWRSuyLZjW0=;
	b=bp5OsW06Rk2Tv0YA1jcaTMV1dM9X4DGAuiPE9d4HhzqZ1AJW5TdJgfJVoL9/O2gI
	2cDILm63le0xrZxNP66vRn/RQAP07vkqHByoYk6qWV7QcuCAyHjazBzPwzxtsDyIhMO
	WhVLhRBJ0XiqPjPafzHe5f5kLzUgtfGR83mj1FKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802c7182e4-1db5e7af-5212-40be-92d8-9171e15baee6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 561a5520bba8513b62c612f45f96c54250f3352303780628431d735a68253ea0
Date: Fri, 15 Apr 2022 08:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650013078
