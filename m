Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8367823DF
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647368485;
	h=To:Subject:From:Message-Id:Date;
	bh=C33BDo2i8gFffYIPpLLZBnXPzmDU4tU/ksGwnpvAiKk=;
	b=VU+2ys3mnrNM/G/df31VCBlBQfQmaBVxTjs+YAf63cbESKJ4Q8kTxFQyKJsz0dyW
	c0HXxEEEjvrUMOwPjzSBkeTJRHp+GCvwNn8iXmWM2qpdNi2wwz5d6XH6QeqOuRBxp5m
	bdBt5c+HPH/HnkFfVchFNx3AuA3h6zC//6li/JTA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647368484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C33BDo2i8gFffYIPpLLZBnXPzmDU4tU/ksGwnpvAiKk=;
	b=fzMBXTVhp3hUNHlwTX2EsP7iQn7/Fyb8leq9gkQ8Q+hxG5dObXHzLR7J5bh7Y1Mi
	gOz5hIutPcS5j9h0QcSzSXb1dItUE6kaV1KLCXTM3yeLAf4xG9khjVqKASUi338a8I0
	G9mToAIITuU3LOeDU+jLStAKOy4zVQUT1CtWzRtA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ed037ef-45f761fe-2c1c-4b9f-9cad-98b6789ce623-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72b4a839e125a0dafe797012f698e06447ec4332b4695f0768b7a591660210cf
Date: Tue, 15 Mar 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647368484
