Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421A64687
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 02:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653617099;
	h=To:Subject:From:Message-Id:Date;
	bh=U4+uJk3WoVbtLqfe3L3dje47sEAaprRjIeGX/oRvhrw=;
	b=NMcN9O3v3D6JHRwWLs7kLMR8k+XlyVQFLo9gkOYdKF82Y9v9S8tl8fRbA2+d2ia8
	XahfpgV549OX1K3uKMrKeZFWBPOObCqSlYednXstsbskrTj89DVoOHZJ6zGXuvBzUHh
	fTBOfRoT1fV1wZjgQ3kmWzWHu7wCdFVayZ2L5Um8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653617099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U4+uJk3WoVbtLqfe3L3dje47sEAaprRjIeGX/oRvhrw=;
	b=dPgOZzU6nn0yw9f3VBu4yPNBMYiKtRy20XaMvYzbjF7K137qFkuX7a2x5aziTmqw
	oKXZ5lRHt6N2MnFc7SAyh6cGgxtxYypMZAfEbHquh2SQBPIPzdkxgLg2SNuX2Dfl3B0
	qtSIs+R0ub4lFOy8AoufXR+f0gKBMHOjcN22fWy0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181034281f9-6e293046-5945-4330-94f3-77e8aaa10e54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df6fa130a4832926d436715419153f7fd3b2ab1a3bf54a9823edffe38a08af12
Date: Fri, 27 May 2022 02:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653617099
