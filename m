Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE697E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 18:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648232518;
	h=To:Subject:From:Message-Id:Date;
	bh=2vPwFaRKugEuimlUJGHSNNFH6SovN5ABThoyvmkzxuk=;
	b=fTmYoJwOqO1rstKtMCmpoMdctI3PIxIcpGa68LPVZRkeF46Y1luNr4iRsgBCAN2t
	hdZbuTu7ohDlZcx1Gd/43wh/Nlxrsq1emmja39XVjlf3Gp4oZYoWXcHwWEPb2o5B8MK
	HCkLZa4vmLUyqJjvRHzmjQIsUnaQ6ksw7CjXYwlM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648232518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2vPwFaRKugEuimlUJGHSNNFH6SovN5ABThoyvmkzxuk=;
	b=JFAY9ywHFewaaImPjTAyca1e3ah5SLPAfIeeL3z3gxiKrjnvZ0biZTkWuoxpOj53
	+eJ2c49PilQ7iALnx1SDZMqe2ex3pOVIVMwqP8AIuep0E4aUoi0MgriO7OIOKsjnuRC
	lULc36Q5NTaB0vOj7Pck4UkKYWS6bKxSxH58v3do=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc250527d-a8865e39-3ecd-4cac-8602-6093e11c5f08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36e7b3d68574f57cbdd7dd5a898ed560bf0bd095714a500b9c4489224fc70a27
Date: Fri, 25 Mar 2022 18:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648232518
