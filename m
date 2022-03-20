Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADBE033F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647791784;
	h=To:Subject:From:Message-Id:Date;
	bh=+cadXQatpmeQgahKzIkm426AWBUJGZQCSFB55YYrV/o=;
	b=jSNpUT5FAkXXm2oiE5oj4jVaCUSVzdWVxm5v3/LJYeTHEFZaQWY3bx/IKY0fQB9I
	Ckeu6mLevMm05byizJn1gugkAcko+EZTIdZ5kk3h/+Yb9oPn/oQ3bj8kdncDfxZdFfu
	xxXqieiqWkv6sJ0yNgjR5WK4MT2Yzgj41JIESfOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647791784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+cadXQatpmeQgahKzIkm426AWBUJGZQCSFB55YYrV/o=;
	b=ktDv1F3EiGp/GLOXormFaQVvG+KEbjL2HWrzKjvWzEW2H5Rfjlf0dYi/sInzsKDQ
	EbCebuVOK1pO4r7e7MjXWA867Ad3+N8/3XJMLdYghMCSAiWwu78NbG2y6cy0mYweDnn
	rECaNRwqRs72Lb+8mrzESz3IhhAuMumcQuYQjPWM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa80b4311-a9460827-1d0f-4237-9692-32eecfc98ad8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb766705dc1fae0d0bc0cf1085866b36447a3421126835ccd115639e853fd119
Date: Sun, 20 Mar 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647791784
