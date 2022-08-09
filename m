Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D22A23D0
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660038052;
	h=To:Subject:From:Message-Id:Date;
	bh=MYdCLkDE9APSo3V01v78AZLeqwVkfvOwt0PIJ+/DiiU=;
	b=XtxfKAdCQ4CL+B3fMr8kNYq+10EccGRlEz/bc8lxAmrkGyTOY35lKsVmpET7LxCb
	YqJP5K5vDYjHTDDwsjyU8eg1I/L5zQASjPBMTRhuuBgy43clITLlzJMdonMpcSJWHHP
	pE/LVyvnxBGNoIAc1s5eC6t8+tpmJQ7HGuLJNBzE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660038052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MYdCLkDE9APSo3V01v78AZLeqwVkfvOwt0PIJ+/DiiU=;
	b=eSquchJI/2rEcS26zv70MgVhhBOZRIN6e8jnHi6uWFEnyxzlf27eZYGjUckyhST0
	0qjp/KKvV3q9k7eRBov+W2MCoycDXsbp55dMTFdr1pjIZS8ZKnVhpGif6yGXQ2IT5YP
	Z4m9ZkbsUbZWW9MqpTCBGHzu+YlJ9WXwNuK3P5Mw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018281fa7ac3-6402984c-0ee1-4634-9946-cd1a4c0ffa2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81d5f1fe02596148ede81d0f96f84adaf112ba0ccbf230ae4953770aecee4cfc
Date: Tue, 9 Aug 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660038052
