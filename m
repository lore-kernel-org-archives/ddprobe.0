Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091747A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 04:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650169438;
	h=To:Subject:From:Message-Id:Date;
	bh=nYFZfCDOFIpKzb23vianebD4NcEmqc4wDAalNMc36Jo=;
	b=bb/iy+pOAb29BSteYUL1kJYq0FfimweIbKbsFluJIcpb65XkwuRGyIylAB3bFO1h
	gzM+EvhKSzz+hAQGyX8b7kduc6ScuNCePoPaE0ye96+m/OJfXigeRRuEWbz0zW+CXU0
	P3QI/xlQIU7YznkLF8FDSRY/n6eqyM26cHnId6hU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650169438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nYFZfCDOFIpKzb23vianebD4NcEmqc4wDAalNMc36Jo=;
	b=bsTkoE6ozYoy192gmlQ7dYfNLufLH0x5PKh6ItG375QcFYJwTbTvET9QsrskHnGL
	hiUMZ3x5AtnpOqhE3FLkGMMYgG0iOrtv635gD2uk5TigkcEItA1SjvtPqnuPbAOF9I8
	OLAOXDIUzkm+Gv3NXf+0ie1bVUCLFvvmMEGa0g3M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018035c3602d-d5a0d5e3-48ba-42f6-8bec-5e9736633e1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bce82a9a6c418bc9bc7c09d9d8a51e9705d7e4cc4e266fe9d1c327a73f2e4e6e
Date: Sun, 17 Apr 2022 04:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650169438
