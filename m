Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821A47A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659019853;
	h=To:Subject:From:Message-Id:Date;
	bh=tiRCbOFYjEqZ63QCcZ5xE276Xp29UEzHQwfG2xXIbnM=;
	b=C2VQYFC9ai9LSdEa8shEfgVUEb37SENCRwFX+fea0z9ugbrYtr21W0DbFGrdApJ0
	lHeLjY2Dz6Sia52xvdlCUUyXW2Wn2lJ5NJyZzbS5BfcGxgnq6widE4OcDoZdi0BwSDF
	AiI6ofNdha1jr6pVeCzz81EcAeJJxgDy+MdjTetM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659019853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tiRCbOFYjEqZ63QCcZ5xE276Xp29UEzHQwfG2xXIbnM=;
	b=kNIgzUlCfCBMKyjDzbJEZUI4Yqq+WVKaTvtKyOwdFy2Z7yjRhZ2JQftaQB2Rci3j
	hJyDUjcaGo5UJe2ZrSUlJZpfvPHD4knjGoPM7MH4Js3BzPaMCVF8jda3cIAUI2bM5p0
	tbHBXbqkabv1tWZyNW0OMXQzHof8lOijRbULE9gY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824549fb3f-ae8a8671-3547-4e25-856f-4537f4f97b09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f26d4ae1ba9fb183761f7238df524716e8f3ed966300fc5f5e733c6f536364eb
Date: Thu, 28 Jul 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659019852
