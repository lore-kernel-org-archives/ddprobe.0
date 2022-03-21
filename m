Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68906612C
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647891384;
	h=To:Subject:From:Message-Id:Date;
	bh=zPR/RnI3l/SiUE7KXhRTL3B2VfUN/NvFPOsBCwxqXfY=;
	b=cgaUPRWXvbfW1bhqf2MT2rYeTLGZRT7CcvyRMW3QGR7G+Zi374adCbo0k1np1p6F
	vbD9hkMHK86OcnJ3qA30bV6ggX5MwhfLA1Hw71yLGf4HwwgNUymICHfNDpTPEaagGKV
	vpKbItjxUbZ7YszWrWiNrLW/KK9WexxC7lwKsi0s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647891384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zPR/RnI3l/SiUE7KXhRTL3B2VfUN/NvFPOsBCwxqXfY=;
	b=grDCWjves4ImgtgeqxcHaso7eVAtTy24WXdx2gYVls0Qgqe8xHtG+M9jQ4ZvIFSs
	78o0rCXGLYDm9I0hVelU/DGOuih70sqgVJiy+bLGeNxhXn8TvoawKGcCOk07amXKhmh
	qzS14vm0xtcb3UIVaAFuNUiUZ99Mqt5yztFoV4ME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fadfb09b3-6faf3751-6527-4601-9d91-433ec20e4f9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c482adba8dab9ceac2ef0658d1b1e576ee964aafd0a395e912fd3a439582aed2
Date: Mon, 21 Mar 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647891384
