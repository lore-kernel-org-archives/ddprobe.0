Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BCF2563
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 15:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649345818;
	h=To:Subject:From:Message-Id:Date;
	bh=YRmsK/4VndyXoVK3b8xJMQFzpalFBRzI6D9WuPBQu+4=;
	b=HTPtCG056MU7wxir2pcj61LLdr7jMudue1bpWBhfBw97hOO8lsCSyHIX/ZX43OMZ
	e9GpH9aFF+GEJuq2CyC63kAvzoWjxCAhjB7mfWLNYvMMtuOojhZ47H+G0JvZ/AfVpc1
	6FpiqSalcUBPZypQwIfUKzGBlfpgv2t6gr+nu0a8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649345818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YRmsK/4VndyXoVK3b8xJMQFzpalFBRzI6D9WuPBQu+4=;
	b=AZr4hUL/vPm6Vpszv+ea9cMWlCmbtA7jEyIhTnL0lF2Jic1YFlcXq5ZHdhGzSiEH
	45niZRMylIlbbdIPTOYplSfgNithAfcaP/msdjV4ti5g8qnbqot6CfKichcBjOjbUEa
	rMjTtAkvWr/dX4WAaQFRRlt9SHfZGhbol/+F0B8A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018004abef09-44c1bf5e-2b07-4a80-83d0-508d5878805d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df0942ec9e9b3d05b4b5dbbc7de1a7f365e966a378d919a1d2807fa56e9ff77f
Date: Thu, 7 Apr 2022 15:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649345818
