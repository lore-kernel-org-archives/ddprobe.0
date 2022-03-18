Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF5C2F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647595584;
	h=To:Subject:From:Message-Id:Date;
	bh=jWAhldCRTrt9gv6jhrJqe1VI8zMN+E1M7mbUmbW/Wts=;
	b=C/05NCwCOsKlg6HvB6S7RcI6xeJe7OmLDfGqUnGiApJzGcAb/x8d0l1CBv40HEpq
	r8CxQf7ZGkR6aQgkHzu0ojFCG9PxrNr6GwRhwW63qojDCAxUwIl4rNuFtBM02jGOCgT
	QmNgWRlwdpd1VHiZmtPQsOjvSZhTxCzihzvMoXpw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647595584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jWAhldCRTrt9gv6jhrJqe1VI8zMN+E1M7mbUmbW/Wts=;
	b=BMpR9PtwNcnSfUgy3wVW1TwFSo/gj578ySJ/aJ9wvk+UU9oyj9D9J0qhZiqGkxOy
	/HoTTk1buTtOpqcyYJTKKBOvvK/+ZK3gcpeSUn/SFVH1pCzh0lv+5djWd2fvPHXpVbX
	jg9fkCR2syK5g/1FTj6pma3vAr+aKovcIULmQPjI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c597cfa-180734dc-fe5d-45ca-b071-560ca689395c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91a9990d2d5b6917bdd41a661b854293de7f4544677d58a87ced9987e202586e
Date: Fri, 18 Mar 2022 09:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647595584
