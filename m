Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C8E2115
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660323052;
	h=To:Subject:From:Message-Id:Date;
	bh=trBupm2dJDQIYV0/Cz705WJF+k6IDOhWb05CwgMjR/4=;
	b=agXf9QcaGKLzFAiKyIXi4F8lTIVWXgMPUJhJzQXaecq+We9c91pP6/EKpIjOqJhM
	eFSbG9pHeKUwpYJpHV0rrPZMNRZZrDjAa1X5iLuLZSpolYoHvsG7bQ0Orw5si/ZLdH4
	Vo4ZGGbXbNLgSoWbs7a36+MntpOLOe9YjhPZdT10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660323052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=trBupm2dJDQIYV0/Cz705WJF+k6IDOhWb05CwgMjR/4=;
	b=QPlDMCgRGpTTDt/aGwTBnKpHfaCxluPHaYWIu3d0nzLx2Vcm1OY44eSlhc2iAZTw
	uz8rP10JOf2cRm0E+y+2pzDDei/aCrDLdpVWlfNfxjrW8JlTbS2NgozYsHFY9NxVmM2
	9dYT6TcxbM5m1jMRnt2Puh1YWG6gPx1Zm48ZERCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018292f73c40-0c0cdf49-ded0-49b7-8ceb-0e52ddc60adf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d038b797df01c3a11ca7bd7cae3711101990909026ba55ba270d1dd21cbcf61c
Date: Fri, 12 Aug 2022 16:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660323052
