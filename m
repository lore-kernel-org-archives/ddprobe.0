Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2165B3226
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 21:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649278918;
	h=To:Subject:From:Message-Id:Date;
	bh=TyVf3/vgBzFSMpuHG6t86A8fM4VnutbKLNtDfUHC9zc=;
	b=O+a7IRFA0ePXJ61JjuVZigy6HfoboSG1blij5Lo7UBYs3Q0OUTPI4FnM9mOM83/l
	rUIvuBRNXA5/FnrJn/7NiamaaQxAdKxWGocr3cx42v/1+ib8H9ESqAoyHOM7EJZ9vuA
	LRWqKHZBodfo0tLdbKQ4+DRzyZMTCBw3Lh6Mh9lY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649278918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TyVf3/vgBzFSMpuHG6t86A8fM4VnutbKLNtDfUHC9zc=;
	b=b7YKCTSy2kh4ICLo/9lZvb4Ws4+D77a69y1rUuoIFeF5Y2zPCqZvTOFP+3tuKsX9
	UHCwGD9+3Vx/Ct4Brwf0FCagth6/rl6SbpzRNtUDRB9y54+dwnEKFwQKISESfEdt8xL
	MAUX3j9ZgRsYUVL5LAc5AqoQoDZYdC2oOsoKJ/lA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018000af1e44-71d991ec-2f2c-4382-a5f1-e1c3cf8efe2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b5ef48bb24f64173b7ffb30c21c6412838f0393d988799ce16d1d2340429b95
Date: Wed, 6 Apr 2022 21:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649278918
