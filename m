Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633CA440F
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660002052;
	h=To:Subject:From:Message-Id:Date;
	bh=NZUbl02AdO6yuU8oq9HBLqEQV8N9xx7ZBcV2aHYmX1w=;
	b=D4ax+m9UY0OYeuPbgMZy7CEZtwcnLiZ7tHYdQXdrb+ANCM9DY1M7YPvAVAAI2GOQ
	ox7AiI/Roj8PUdbGhN0wxcZQO2oGTTqYp+uLQjhghqV26wiQxtg8jQmIyQwweW7rEUF
	ZZnGhNkxO4GkRuiEgCQj4rSMwUP1JE+ljV6qW0xA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660002052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NZUbl02AdO6yuU8oq9HBLqEQV8N9xx7ZBcV2aHYmX1w=;
	b=Th7l1g1ohxCeesumfXJR0lSzZy1tbdKezVv0ISENfiuUxGyXcVswjY0paLjPSg8x
	k+cxO/wtZXkFeFBCLLS6OPX/U0lLRByosy6TAH1bcx3B+uU2gg2HzP3d00V2yjoVsNx
	jBK5JmjLAOeWr+U41gvGvo4yNQFTr+gu1czWDG/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827fd529c6-19bdfbfd-0299-43b2-bcda-13d7c3d61cbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbab226b1ebd056758b1096ecbd869a9792d5e51c192d7f61330a7075f078cfa
Date: Mon, 8 Aug 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660002052
