Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407342598
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 11:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652440859;
	h=To:Subject:From:Message-Id:Date;
	bh=N0g2JWTOavFm2q6ISS0BNHGkMRHj5XVZQ8jbR4QaLFo=;
	b=Rq8bg9I0xoNhQ+qQAeISbWzznT6sYCBZywwKF+uJ9I+K9BXr0uG4msxYirusSLt6
	V+eqDs8O4pDGGnpvG1IrNIIPKbKSrCdZ5/r3cuUX73l8H6tqWGnG+sWGcTmB6qzPCDX
	gaNGLZBS0MIK0uqS/eBIz0ePhwzWn5F68hzaTEsI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652440859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N0g2JWTOavFm2q6ISS0BNHGkMRHj5XVZQ8jbR4QaLFo=;
	b=kN9iMwVYnT1RZLfrniLWy/WPe03kIMjk+JOj8cKg/ysACjHIBv0FODY6gWOHR7Uv
	TyrUPzzBZN1xuD30gq+zPhdRAnR4vDWrJZQtFzjH5S/qztUFkXMAhQkN07zSrMNk+pz
	A1edXUF+YUeFDsaEDSR8dps1YIZJXuSIn0C3wofQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bd268284-8a27d4d8-41f0-4560-ab7b-81a521ed15c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5730685557712df5954a47ceec20da8bbae5be4f5560a1cec8a7dcfbf537571e
Date: Fri, 13 May 2022 11:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652440859
