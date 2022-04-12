Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D9D7B
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 09:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649757598;
	h=To:Subject:From:Message-Id:Date;
	bh=Do0HqM7F0bZA9A+Yub4U6/Q9jpT0iPTVCToJ42qpRbk=;
	b=cmw2TpddwL1SC09g/Ddw5Ew3Sx+7Lmy+P4rF9QE2h9Vh2JB8yTdNDgLuhyNP7Fdc
	xXgcnaoqedE5LPYPYOY5wlunJjaZk4AZekSf7VheaZ2gAzb0tKZ+B5G2wMjFOM94AdX
	K9BuTxNesJ1WOcVpi0XNsRrGj42LdGLm84n85DuM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649757598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Do0HqM7F0bZA9A+Yub4U6/Q9jpT0iPTVCToJ42qpRbk=;
	b=SInwrZ2ddwN5ONQrE0dX15cs3KZwYURnSqbSt/dFDn0e1noc1M6hNuZC1yPhqboa
	nqcpOmBhEqPK3idK6Yq24nMCrMgK6+iFfm+YwGHL1+4FUxUDKZMsyjOHyUFdZkl8OVD
	JBtxiBS1rRxN2WYUo/Z5/QKmQVme1/PInlniqPjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801d373232-ecf204c5-bde8-4e89-a3dd-349673c1d1f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7778cf8adfec155f3e71cf353144713bb7ef0759d1bc9557202d9cde8a03d1e
Date: Tue, 12 Apr 2022 09:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649757598
