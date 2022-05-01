Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD29B1FC4
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 03:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651376639;
	h=To:Subject:From:Message-Id:Date;
	bh=ScwoiAMd1mfmNK15tIrRzoyL45Ovnc5jYeznNIbE+7E=;
	b=hQP1lTZtV+2VdKYthgVNndPkk5lebV6ZV8VDP6tUBLA0izdVi5z6LFGy4f/ee+p3
	WQ2t68Zfyy0cEhuP1r5Zo8REb6ZmLUpo5zi3Uvt9GE3JoNtQVzl2fPMya4LMzC1xdZH
	hNAzyUQtXIKBGNtnvq9UzkeJi/nwqv4QnoxTmBus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651376639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ScwoiAMd1mfmNK15tIrRzoyL45Ovnc5jYeznNIbE+7E=;
	b=U73xCC66fxDIIv5XtaLxrp/K0fFYVdd8FZHeW/qnzDrakFiR65QRMJFD2wrvagNp
	KZWY7XMXc9KsxOGv3JpEL4uFB2rQ5Lkpi7Itwt0+ksCc0vm+XqVmzeIsoySZSsN7oDe
	8EQNhTNn4GZIeqOJjLIddHYkFLVMiQV/xUBMnxxE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807db7c97d-96662d52-63fc-400d-a564-394d17134ffc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3644488325368270565a953605946efcfd7d0651f70138bf608e15924bdcf29
Date: Sun, 1 May 2022 03:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651376638
