Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94057A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 09:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656409012;
	h=To:Subject:From:Message-Id:Date;
	bh=FddbLgfTXsMICnLQ78v6rkHdZJVBMEGphtAq4Q02hQY=;
	b=iwsC5788LWgURGaZLDjL9XGRAJ0N1nC5q+U27DNBt+v44FfYUbdgHU5PLnjIGqei
	aRINik9TFtJPWWEXlsWkS5DVR15HeVthf4Z5i2OKTuHn0YAIOibJwYZ/6nvFEvy0aHR
	zQzHOkkhEJGqs6GGlBrP1BS+3dBUrsfMHCHoh1lU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656409012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FddbLgfTXsMICnLQ78v6rkHdZJVBMEGphtAq4Q02hQY=;
	b=HeVNk4ga/6wb/LZ3MJOqtgRr/Q9N1Qo+jv4Ghqh/r8AhOoNygiGLJxUJRPv/++xg
	5xGLjJv6Dfi9jvO2BwAS+VIxfzwEDuvzkwsZVLJw/orngaldmhNwPGOmKrKGzeilUqU
	gMC8v3Djjcsrd36SjHfdV5XceJQVzjsZRFxZG+gg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9abb83a-21e34366-6e90-4962-aecd-92effa12c66f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e6617f7f417ed45378b67db58e113b9942cf6d83ee23dd8b4db7fa070945e07
Date: Tue, 28 Jun 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656409012
