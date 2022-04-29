Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B541FAA
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 22:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651273138;
	h=To:Subject:From:Message-Id:Date;
	bh=nWfKp038dcJZ7oAG3TobdeTWYAnAKRDSEY7wU3tefxk=;
	b=EpFacRPPX42ltFGKxV5vimGzDsjq7woqDlWiBOnmjby7gSPlvDNA6G0ZEmOoIsEG
	TnJk3x9skUTXgAwfZoTIjc0n50yvyYb93zj7GzDnSsnseJ4+7iWOe0ueyHSb4UhsGw+
	+ieAx2dHcAtlLeoBc3ZO33INTZch58DniGZ9r1yw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651273138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nWfKp038dcJZ7oAG3TobdeTWYAnAKRDSEY7wU3tefxk=;
	b=OqZaE7QGnyI+mse87tAZ2sE/PH24hhmwb98Il8g0Yp1P6BB2uIjZMvxZwBk9Ix1J
	aOSEuoqQM2po3p9Wqc0KGwWt0Aq5x4KN0Nc3//MycSvc4NcP4d9aGJfqF/u59kq8ixL
	It0WqycoTczMX65XVHj1EpxDfOFSbYisSv8YeSzE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180778c8033-3edcbcb2-8eca-48d0-a83b-aa311aa6dffd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7281cb3f064654d94d4ca789e262611a6951f908d0646877cf287cf672766d09
Date: Fri, 29 Apr 2022 22:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651273138
