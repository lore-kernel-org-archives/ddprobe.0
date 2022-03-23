Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27382184E
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 12:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648036885;
	h=To:Subject:From:Message-Id:Date;
	bh=+SVqhbDnU7NOiq5AlMScbBogNfjGNRaZ/ll7QPAMA1s=;
	b=JvgzpMfG3utPhcZJeSORtOarv99zC0J3PQLI4cGD5Wv8cFLDN83VAllo8Vo0SY8O
	LlKFw7RL0Buf/+y/TLxvmOKaq6mAcgfvM5zVl+U/vqkT1GaF0dL4o8eNKkaJUGfzDjG
	1p8fTkl8/sWg6rXUmtxsD81WdIrzae5vN8/CgiT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648036885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+SVqhbDnU7NOiq5AlMScbBogNfjGNRaZ/ll7QPAMA1s=;
	b=jNHecozjwR+4kLwE9swsMbV4LPDC/HUTkOfoQdj6Fx3xW8aKW3xkXUsGxpPW1zav
	SyOWUmGuuvJQAHispR84qDnS3asOiyMbC8PQhyGJhI4vC+ri10+HbWeQYlvINf/SpdN
	LvoDf3lpGcqewPRf4Xfamoh0YCO50mthakkHFh4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb6a7310b-a4ad9d20-ecd2-440b-b013-3509409c9b21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc115c3e9989e9e25b5a7042fb38319dfe2e2dd63557c8ece6ab9a4244b01c27
Date: Wed, 23 Mar 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648036884
