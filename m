Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78F9632
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 12:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651755358;
	h=To:Subject:From:Message-Id:Date;
	bh=TxEqbiIYlN38zepq+mMeNUo4XLNt0S9Ry8sgNK8Gw3o=;
	b=cKunWghyQUwy+o3e1YuNeC3YVJpK/5mUaXiy4KIILs6KRQT/5XFE90hCIpa0iLtH
	YwjtyzvBR5U5Dcj5kS5ZQNxMqBxmLL9q/XxaKBYUGfvw5jBen2kdkWNNWyChff0Hi3p
	zFqdLY+CkIZs/t0hxtX/q0yU5qA17ftMk3kLBp2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651755358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TxEqbiIYlN38zepq+mMeNUo4XLNt0S9Ry8sgNK8Gw3o=;
	b=drPwT6x8blEHI9ziXLZT3tPdAjQRdQBOxtmAaArD/KmTKu5mZQerSsvl9U4LMM26
	wkjMDOXeQC3nAxi6hrlC9WVZTw/y6Tvv+jO9fLNtn0nhYh0CQ3j0/vqGcWz7L0T2W0H
	pligl/H/llgEXMunMH7LqSzKefLRf1aSbt7OQV48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180944a982c-2d8e4817-8719-42ad-b416-bf72e30ceacc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f393356743707942001f2a7ee5e8450abe348106e8292636d430a9218ebe67aa
Date: Thu, 5 May 2022 12:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651755358
