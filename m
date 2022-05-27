Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75741851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 12:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653654419;
	h=To:Subject:From:Message-Id:Date;
	bh=B5hJiDskJKtaCMmXQCWomJ0r7Xg4Ky+pIVOYQLXxwxE=;
	b=Yk3VDCoTnKEtaLPZrEmF9Tf9q+zifWtnlAvbQujNxqhg6AME+h9LHQMh0ft2hqIQ
	jgaMTYsG29BjcZ23pmjgfyErxdR4NpiksxQRvKODhn+QlJG0YRWzhXFBdwuAEsfJ5vp
	X3q1QR8A8zaeUmBNR6w2NLdrxxChXgByX3npWqZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653654419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B5hJiDskJKtaCMmXQCWomJ0r7Xg4Ky+pIVOYQLXxwxE=;
	b=KPbBJ0A/VTJcObs49s+XBKG37f9/FUeKo9apU78XkJGRQYhIJ7ShwaBEzaItiEfk
	o+g7f61KmORMwBAXCDoU8iNjW+c3CFs1zS4bDabtauqmfgtxwMPMJnqwrrOuILwBDkh
	Gs+F31/eOB+a7J1+qne/6s+Kp/vr3XppRNxHLAXc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181057bf763-4b0e7e46-7bee-4549-ab35-5e8857521534-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79c8c857b183397391a643fa7793ab054bf488f9e154bafe3d4a2e80fe3c5fbf
Date: Fri, 27 May 2022 12:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653654419
