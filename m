Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694D16AA9
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660686652;
	h=To:Subject:From:Message-Id:Date;
	bh=Op+5HwrCt/RaeaZbRiT2+F+YDx4vhgShbrARINMvARg=;
	b=DyIpJEiRnwnOeqfXJRfcFMkJmq4FaSsE+KAbVQeG/SilFzntKR9f3JB0GKkOQbgi
	v+1LYOS/D4awD4hbG/wmMx6LcS5UqN2uxvggI9a7g2PYL8xOoYv7m0lG7AYdawbxMP5
	L+VhR5cyW8/qFEGT5rRmmCl/p2k6dYyR2x0cdpE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660686652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Op+5HwrCt/RaeaZbRiT2+F+YDx4vhgShbrARINMvARg=;
	b=T8M68x15enq6nROI73PERuk/JJTUMJlV2GgIG6U9/mS8V8JL2N8ZzA4Acri1D5RM
	PqQtehwq/DSIE2LS2mz2gzznMQvKDpj5VSs7o95apUwapAEAO1xeLBrGqkiSVy+mxQQ
	E0S9sW4+zhn9fFALRpK6F/+fGkGLlBAb0UPd6nqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a8a354e3-86bab8b5-3c99-4747-912e-ac247f266c3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1659c577a2f1c4b9740fb0139d3b6f1fe7c2d8cd6e70314486a5d7257c4a7bfa
Date: Tue, 16 Aug 2022 21:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660686652
