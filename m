Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E477463
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660774253;
	h=To:Subject:From:Message-Id:Date;
	bh=lh99dstReqgdogVzfRIQTWXCEaAWpDJJ1OU/pzj5lII=;
	b=XRx+I0dlIrN5LXecIrZAFNjU3snUwubVSrF0uPd0tcxOQX7PjUVYV7Jh6kqKu46C
	PnepqR6gLK2P3CPQNad3lIScVz92cXbY2s/kJcrvJExWDYzwaLuwLbNqjutPBlQlc4n
	bNrE8TANjEVbXM+KGsk8tHRoL+aAn8TLMtwzSfSY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660774253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lh99dstReqgdogVzfRIQTWXCEaAWpDJJ1OU/pzj5lII=;
	b=UxsnaNWkBj8qs7hFGN/RmFZehCOW0fazJ05F2TI0/XUMrIf5Z+tWy6qp2Jb8frAg
	iC8PvzEUOvt1ff1d4PfOYv1MGkIjI76P2FYoDUUIcfSFGuR/K4hWUAx3C41b3EMUVmF
	6SAtzcd+oylLoJtJzTY4DcPTBjNt0Dknf5PULqk0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182addc0011-7b981c65-884a-4477-b4c5-ae730578b85d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a895f684c12ec54671c1f845158db84ae815f55e394dd3a600377f6cb209e00
Date: Wed, 17 Aug 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660774252
