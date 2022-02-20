Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D142C17E
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 04:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645331485;
	h=To:Subject:From:Message-Id:Date;
	bh=M6K5a2jwbLInc6IgPBBfrNGy1Vx3PWTTcAgeH6p6OYo=;
	b=c7xgl3jRD9Cdi93DtrRBQYDP78kkrmj5/MxDUB7iAS6j5Kh8E17hFT/CWSd2junr
	zcalRuhWQwyvyjCnvLudVTu2uq6r9zA8baCR9+UxDKqppkH9UNmZ97/AX/xBB8az8N9
	8UqhOgD7TdhWZeFzrPfQZA0L4fWoqwyBbQ770YN0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645331485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M6K5a2jwbLInc6IgPBBfrNGy1Vx3PWTTcAgeH6p6OYo=;
	b=CuqArwJUZMUg9aSxi2sjCFjt779RbFVTjRemYz9HGs5ONtBstlmG+m5U4qGt0RfS
	PRnSvsvQ0iBodL6/BN7F/JQmFF5ehfxjMb77EJAux7UYylWSfOd3gtb6U+KEO9hDP1y
	0qiKlm5H8TBbUkg68ZCLv8olzu1WcBR1pkfVqbbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f15661085-70c4e03d-7bb0-4289-b3f5-d4b6f7efdb85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae0e4f1f8490f163dc89c931693bfb435511068c084103eddd3cbb99053b62b2
Date: Sun, 20 Feb 2022 04:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645331484
