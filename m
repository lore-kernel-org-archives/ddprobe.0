Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0611840
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 20:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649707618;
	h=To:Subject:From:Message-Id:Date;
	bh=0YhlSV6rN0ep8c0idI0F6UPh35alfXksZY/RJf0nBfs=;
	b=R834MnMArgRNiHKrr7m1LacLG2Y1O1l6UuTdJ7zP8kiKepX8XQxYs8IRgMI8YbPX
	t9eliUUgX1bDP00RlQr+7LHRiY17PMWL74zA4H5W3dP7aLD/iDSik3wrobnu8eaf5RC
	ZnfXvO4rl0BFRNpPRJ/mMYIKivIzjXJUy8qZhoAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649707618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0YhlSV6rN0ep8c0idI0F6UPh35alfXksZY/RJf0nBfs=;
	b=YogKlssmrlIZ5Y5515PLAFVJDTwnccDMGFAmJWwzezJstQAQECn79Nh0htgG+/wf
	0b9a+eWCKUCbVnGUFMTxFx29fHnZAO/5k75oePhSD+V+YGpE5QCkVAktHbWed8zETsk
	ClMzpbI1TQTzC9/0fAz4Or4J4x0eGMgqxtUR8MxM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801a3c8fca-9e01a63e-c77f-4bee-98a0-ad230b20a832-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96af9f7282a0358eddd6e35af69ab69b91e7689dd90961869a771e28ec6b6d4f
Date: Mon, 11 Apr 2022 20:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649707618
