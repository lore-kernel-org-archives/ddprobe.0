Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F593D6A
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 19:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656705412;
	h=To:Subject:From:Message-Id:Date;
	bh=pedOvAQ2fZQqvCNG8UiVUG/zGG0WZztBfttkFXWWPG4=;
	b=KFZa4YFvG9ErYhyOEOYgm0tu2YfnTPGzFhVMhzxM8rdt8zmfE2suFQHs80LdvW+1
	aJRsnX65FA1X9oK7f6WU7Rm3d2CJiuLGHwHhb71c0oGTJjgVUjftjDqqMJ3aLKXnnR1
	2Pm8EngGvJyj+ec1fFyVHWBxeQBOYs3qSPeGJ6+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656705412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pedOvAQ2fZQqvCNG8UiVUG/zGG0WZztBfttkFXWWPG4=;
	b=EThty8fZDNPVn7BRe5DysW58zfs0+sVlaC2nkA/ft7/CV/XvE0ZmkEdZmhgJ1DRv
	dBf9Rb8xA/UBqO8swznMcNzAgyph3bHVeA2d9yVTr14Icxckzpo5fi8/pAGye4f+Yqy
	WdX8b0++FSvc4VG8jC+vDx9Pq270Y7z4SZYI2jmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bb566cfe-ba472a29-933c-46fe-9aa7-3f4ba9eaeb59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a46c74155dc079b4693219bab0c895d4bd5abbfacb6a7c95683dd04ddb3f0f8e
Date: Fri, 1 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656705412
