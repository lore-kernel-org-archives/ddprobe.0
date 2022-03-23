Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EBF1391
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 09:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648027884;
	h=To:Subject:From:Message-Id:Date;
	bh=oOAuskjVKRnozKbs03sJK/jtPJ9ezaKulQcn+SO5v4s=;
	b=K3DZUD9ZBqfm2u1AsT8QF0dz0TxEjKMKMScehE6jJoYb5Wf+BZwqLnmCQw8m+44X
	cW2csqwofZDwnsLjepoNr42iZnaUepBejTDv26mpie/9TrcSBaeOj7K1sUSPYGapVc4
	AMJW3xGaoa7ttWpvy7kqj3fa6voX+8Xtup5mTniI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648027884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oOAuskjVKRnozKbs03sJK/jtPJ9ezaKulQcn+SO5v4s=;
	b=OwtsewXCMwKe1wYowa9jLTV0Qnd9GSmu1XBU935Wwhx9hIW5G+5BShnySBUI85r7
	pVouFHSacqeyjeqrC754QPtVemesQrJlNSXmjDJOgviLI0R8F4b+iy9x2fiq0e3yMnr
	zQjjSD3CKql3UQX+EmBIhN6Ipi+Kvob6/698hyD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb61ddca6-14f7a47c-a0e5-45c4-ac03-74558a111946-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d47e6d69361e71fef67ed2e7c02b8ba5ea6701c2cc56dce0466bc29db58570ae
Date: Wed, 23 Mar 2022 09:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648027884
