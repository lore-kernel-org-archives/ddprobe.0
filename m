Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527603204
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 15:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651590178;
	h=To:Subject:From:Message-Id:Date;
	bh=Ddfk/qdW72RhzkPt6nCBDgzPx6kO+vLf1s4A4w/Awpk=;
	b=EjRv3PmbwGIddEaSbhHFIwDRqsIVXcSmYvUEjnV9PvKC36tRAz2LqWDpSG5NK3vL
	1wWVCWE7DT4qRZSgnaByiQqm+x5tNzi5SFYW2bLX1VyNdZHvy/OdN4rcgcypsOhVIPH
	vzaQbf+ZLiAacVVWGftl5kOkddIcDWbkcUU4x9H4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651590178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ddfk/qdW72RhzkPt6nCBDgzPx6kO+vLf1s4A4w/Awpk=;
	b=NfGYRs13KHSkMqQwW3qL8ooJQXnE+Q+L3KvnzQK6MKTtaS6rBDu1JU6wDsN1UeKH
	jVBaQBgKC2TSMy4Dcv7lvVak8eDWRqAKNGi70PM36CUq1jbf3pUQkVG+wsZu0u1ova8
	b2RbDJWhNLFehkFotkTp1JuZge5TNvwPwkHNvNl0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808a7225c3-67d945dd-2d25-403a-9cce-953df4639bc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac3910108fee54f4d2c3a8f7fcc023f0dee6c7aad4127f58c00616c939f98f99
Date: Tue, 3 May 2022 15:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651590178
