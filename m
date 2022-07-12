Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C5F823AA
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 02:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657594013;
	h=To:Subject:From:Message-Id:Date;
	bh=2g3c8rd3BtPl+zpaSC8wx3K8oMJE2wsMNYM0ZAx7Plo=;
	b=L8p5to8BkXFSv0Rf9nTQX1plL2t7YYsojOtZXiqLLLEtLHtTWNxzdne8nqfr//zi
	/IiT4vx+CS3W7roGoaCnNLknkOvo+7kZDljMFxW7h7arIqhSEs85lBKOh9Uq6hM319n
	SgxCOleqGpILkP1Eyj3s4rkrW1oxXwsrfvGQhgSc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657594013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2g3c8rd3BtPl+zpaSC8wx3K8oMJE2wsMNYM0ZAx7Plo=;
	b=dNgdmiGP6Z//gikTgZQb7OLNZU+PXt8gtFdCoLjuwooRTr/icKRuYKEuDESAkEqW
	Cdl610ZJhNOAHDmAz3IK54kQqD5wjVHanSg4rGthtcTrv7LRGh71EdPWJKeiEYSkEql
	ATMo4/07L5oHzrzH/ii00T0ZNXT40zADCYrVfD0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f04d62e1-a09139d2-3250-4e3d-93fe-0de57089eccd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc03a9abac22bea6392040e7e1f70784149adc488dde4ca2ed1236060fe00c45
Date: Tue, 12 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657594012
