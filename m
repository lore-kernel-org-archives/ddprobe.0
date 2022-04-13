Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28CE28EE
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 12:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649852638;
	h=To:Subject:From:Message-Id:Date;
	bh=G4AvfjnAO+mQtEgmaqRznCmUx26jN4/1ZJQSAuauFbY=;
	b=E5Cr8EUicVpV5NzxUI4OECHzWCjGrh0ZPY05bW6OIrcsYwTeMyECWehhFYDd/dq8
	b2LfVtw9bAuCnjdpMWNg5srLQA+8jJSqIyGUUrWAY2Bd54gLEcadvJ6lsT6d4khkT8a
	oA0Q+fs1YUGJVMETe9BJGqvADwSW45ta6AUkALTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649852638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G4AvfjnAO+mQtEgmaqRznCmUx26jN4/1ZJQSAuauFbY=;
	b=UDCfW+J6lbf4S0/zSwFNn80dhxuo6EFwWzKeKr6AelqieJSi0n7h2NBDCDkgYFts
	O/jJd5NF/dcnlRUq2KnyXNxuDZ6LcqG29mxND5wFTCAY0DDLsMDF/EI4+oSuFdb3F2K
	YKvpSJJuq5tJGmfCj2bnW997wUUCTFjxSZYY5SZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018022e16420-4dd4ffcd-1d44-4d6b-bf29-3b352e0b0261-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ed6e6278ad18db45869c4e3f2a8874a6e8dbcb4a27402da55c0e613e6d64c6c
Date: Wed, 13 Apr 2022 12:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649852638
