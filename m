Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF30F4A09
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 15:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658504812;
	h=To:Subject:From:Message-Id:Date;
	bh=G0/YpyTMt5dE6pA+/wLx18SBZ7UrAubiO+GnYZdAPrk=;
	b=ZpCZyOf8l0KdTyzP9adukwDI2e19B/eyqLpLou+8LdRgzS4vtRRi9CZWj7nYHlUe
	fsx1pTOeYi/J8PzzZ4Edqt3NVKy6D2U516+7PKJ9tJYRRj6QIdX8u6F2ikkXIFb2E9D
	0PwGSYKlp5EC+Mk/lu4pMAUFWiZDyMRySdwWTYBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658504812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G0/YpyTMt5dE6pA+/wLx18SBZ7UrAubiO+GnYZdAPrk=;
	b=UHuFzNYTYzzf9fBeOplnMhJ8CewQl2qd77aPlXvPuy44y/4ShsO+hMj2VarPiA52
	N/z36MD/IwO5ijKPaku/uy28ZvTsIvkHuREfVX1g+VDNX3FYzV1TIODIcN6jiSfumJh
	c/zSYFvAcRbrCVjKGDO9xW01EoYdFybJ8pPwSGIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182269716e1-6c41a771-d6d1-4236-9ea0-85558c35b5b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75a4c4353ff831cf337abd4e71e804a69c28736526fb661ad5ce3f584a38ba8f
Date: Fri, 22 Jul 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658504812
