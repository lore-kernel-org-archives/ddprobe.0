Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8D67B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656586613;
	h=To:Subject:From:Message-Id:Date;
	bh=/D7O7rdqr6DpAvCm4xoXBj9JPT9FAYwpMIM7o2YsL1M=;
	b=Q8UuRKTMNEh2Pt8njQNfbQWFVBh1ma024MOu20h7Abr/Z292OPERsEajIwW9ygmM
	Zs3Y5bbeRT1MG5aMzpKCTIY1MljQV0GwVova4L19D0cs4CGTXUu9aq9eFYjQdwEln8X
	6CWSFsssiHX5AqmL5ORT5n/HeMyjfbztufzHHNXU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656586613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/D7O7rdqr6DpAvCm4xoXBj9JPT9FAYwpMIM7o2YsL1M=;
	b=clJ5QeDXzt6NyOgi5BXRxWnxNVaR3i46kT2RHYVwvdwWdomunQbh4z+MwZ7uMKPv
	8O08ikmMwOgzWIqwohsV+J4+lrg4u71zTmtkT6EzOiLVr8laIBj+2CInIlT5Nh8k1Ro
	pBvZjCvBv+v1EqY2WuzUoqq0VVW7o9+D2tyzLBOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b441ae7f-4d12162f-877d-495a-afe3-9c1dae653d59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90b5998ab24bb2f1fc3c819d9f2fb25d0f814eb8a9776ce38145bf2d5ddd67b8
Date: Thu, 30 Jun 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656586612
