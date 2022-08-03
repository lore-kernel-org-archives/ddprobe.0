Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6732B1364
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659536452;
	h=To:Subject:From:Message-Id:Date;
	bh=nSpq185xRPeRiq5yynkeubU23fy8PcMYALj1RxPane4=;
	b=CitAj+1IVGCRDvAc8QTCpKIfuSFX8fgeUnJVMvLDg3bwWgf16x/2/D5TZlhl9pxV
	8+CrWrI3yxACPaSRY5bOHGqkK+jN5TRCGtRzbaGlJKAnDXx89pSEEQ3pZpHT8xkddip
	B0bqaazQ3MfVYDIwvVsKF0qCP5Ehh5/DhCppmqTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659536452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nSpq185xRPeRiq5yynkeubU23fy8PcMYALj1RxPane4=;
	b=XtNczgFi925VSgRAFbgaP/W8IIFd3Rdt7bHj3BIViTCRpVOwX5XUQqm/GsxA55rx
	dnz5RmcZMkpR2R2u25s/+nU/A5tYzMpRGnhECjRoXbwSAKGmOHOiQ2nDpbLIrczgcgE
	SYWCFDJiAjn2V0GEwuqiwtj/EveO8FkfJT36ShZ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826414ac67-a847315a-793d-4ddc-a7ee-c8ada06cf40f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c735ae96a6ebc035a132efbb885313a1295120ceecce473b04e26bc759881335
Date: Wed, 3 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659536452
