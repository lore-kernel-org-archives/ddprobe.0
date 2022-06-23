Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292E81842
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 03:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655955539;
	h=To:Subject:From:Message-Id:Date;
	bh=H4vZ617/ufj62QW0efjP8Pxq7A3fEBL0RRuB4mRfLfo=;
	b=As5pWTNH4QQd73Ei4MsZEhdTilVvjEHOA2DHqnchlGV8uM25nMT77YDW9t4/XDbS
	16vyyf3uOnfdVkDsuZExAppJb38B+X78wRt5TXf8SZKENPxmCDb+ggun8BysGzGXajI
	Qo+tnwmKhAQjqHIS0Fna4nmD8j+W4XxM9APFsM/c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655955539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H4vZ617/ufj62QW0efjP8Pxq7A3fEBL0RRuB4mRfLfo=;
	b=AdcVgTNnAInce5pOAP+o+NPgFWFq6ModWt8D5CL2sEVj0R0hvqCTiRLnKCIC7l0P
	DRK1PeIFtpcs9oBkq2kzmw2YAjdZqGbi9Dp9AOcn9+x9OsWwHocpQS69pBHFDZiy1Zw
	9oa3yBtmf2clJowUgIF0fZMvxMGODG9Oot2n+s3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818ea44526-1673a40d-ec1b-409c-9b04-8196c2435edd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab533dec9197c8cb15afcd9d6ab5ab846a297c4300ea2a5a92b9c68932eed104
Date: Thu, 23 Jun 2022 03:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655955539
