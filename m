Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F35367C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 00:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655080919;
	h=To:Subject:From:Message-Id:Date;
	bh=urpdbvua3zNqrs3oD/w4tGjSY+THp0v/2zN6emF0a88=;
	b=ZvrNTPvhMSdB2tDGq0IbEA8gQF+MaFQgewSvAlFww+3ql+vZNVcc8JvaskqpbRMd
	lh/TMj/J1CWAwu+uveUfWYaNH1bQminD6tPMY2CZYVRc63OU0Y7PA9ySg1K7l0MLMmy
	RIRNuYPwe+7A4l2AGT2h0ZBvA0LXIPfUDMUIPHZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655080919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=urpdbvua3zNqrs3oD/w4tGjSY+THp0v/2zN6emF0a88=;
	b=bqgBigXlWyXQXbODm/FsQlZj0GQfeLnZ172bWVAuGEfwqM+3ygGkO3Q3ZAGldUp4
	cglIRAtEjLUl/tT6pO0/ygQRg2Eth467+zGWQwT2ldubwCzpt9hPJP6nZwqDA/Sfy5U
	kGNCZ9wr1SniK1lM1hqM/TVw0CsPmcWfDO7XSTrg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815a82a0de-1183c6f3-01f0-4a98-b133-6d8bca9a168d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ee73c5b8befd791dec12563763a1fe354020ead8839db1f21fbc0ac3ad04aa7
Date: Mon, 13 Jun 2022 00:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655080918
