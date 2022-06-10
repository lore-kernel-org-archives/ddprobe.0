Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487932F4A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 22:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654899779;
	h=To:Subject:From:Message-Id:Date;
	bh=VZK2OHIkq+jK1KO+5zsvIgmisvBORRD8hOqrLiEJWOk=;
	b=Xyjcbe216XhMGKm3zUoAxOLg2wqRBhryW2B6NwIpPysg0O94btaT0pFeylz1gegD
	aOZF3aXiuuTWWRAtRMbe01BwfUhGlwwHEjEMrn0bkCCfFw+rXFgYgVet32GcAHoiNkT
	bOdvgvYUgT/912u1WeifFsqmH7yIqHRwLIcmfk+Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654899779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VZK2OHIkq+jK1KO+5zsvIgmisvBORRD8hOqrLiEJWOk=;
	b=U8vZQQ66JM4bEsjeZ/DSdFtV+pkFjz0ANXHUWg3oqFI1am0S/dOBWPDICQofnroK
	CcpQs4MT/9OhK6i7EFwTCtq0uHX4R/sHlRuZewS+XnReX3bIHKjnlA5y8PsejkOrN8h
	g6Jtv1mUGLMpA7rtC1EeTvAh+p6O6PobP1JOKwMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814fb6a6b2-f0caf121-2fad-4036-a0ca-777d3fe6c4d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a65959afba9eb2404fb355444eecc7751dad7cc7b800b9a29a98d6ca323cca7c
Date: Fri, 10 Jun 2022 22:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654899779
