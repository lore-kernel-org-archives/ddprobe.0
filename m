Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171567B
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 06:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658213212;
	h=To:Subject:From:Message-Id:Date;
	bh=XygxOzy+awIXCH3XKj40ACKbtv/OInweCTzrTPoMTyY=;
	b=fXa1CJ8mwhPud5DarYuxWbfjM7z6Aeoh+MIswjSuifb4WxSWViwONhu9zD7PUZhm
	zE9Ep0rdw7qeG130LtJkdKEpVjamwZHwd/YG+VQiWFJL3uL9eK+EB2TndedhvLFwK4K
	IKcEF/I+oIPBPlYRZvDL8uGFkQlNYWxXYf9pSpMQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658213212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XygxOzy+awIXCH3XKj40ACKbtv/OInweCTzrTPoMTyY=;
	b=e9k3WOVqdnLGlYfCIR5F+bK2a0Bi5VMQmJlXSDijYPljwCUeNrEhIBKuZP1PieXd
	jGFXXeKrK6kFHL4m3eKQgiHus6jzbMd8Etek1RK0ARJvmdW2+cYpsCyT1ieI99kxBgu
	rBfWB+/A3gAlc5ZrXGg/dPUVcidi8PVAdgg1US7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821535a06c-37d78a71-42d8-4c5b-862a-ebb460bc444c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5207e0781d60b2cf7fd97d65e5828e3092c3ff25a3cec2569070c056c80d2bee
Date: Tue, 19 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658213212
