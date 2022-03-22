Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F1A6465
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647987685;
	h=To:Subject:From:Message-Id:Date;
	bh=gmoDyxOI4oNQooQGMqnLNaMHbcCrI5DOkpZiUiU587E=;
	b=dT3rBkfAsO1jHWi1H5s/JhJ2eDsizjD555MrcVqAHPClXqvOsoTOp6P2VyCVKE/7
	j7Yh93CIpbSVe0WsO21QJlQzvtBSn2vaLXw2NPD59iD80ElwJexczVviH6b6b8HQZ3c
	CuEbkJOxLv+yOPcO7ftvNZJUZy3X2P+LN33jiTf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647987685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gmoDyxOI4oNQooQGMqnLNaMHbcCrI5DOkpZiUiU587E=;
	b=KyTWIxcKaZ6WZUiJMEJi9vLH6X6wtfZcqU/CUfz0vRyq4u5pi6whdm6Uke2SUHpu
	W8cZCfuvniPOxx4XTmU19eXMGPvjSBvEUU+eHQ35dm/KR9xgc1qumRLObbhAlcxfqy8
	sFIrWPql/Lipv8oVFEyltMdxPPzu+EbxSr+pqev4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb3b875a5-3b49c598-8d1a-4aa1-bab8-45f5dcabe442-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb9f3bbf07ef44fe31e1a968a8e9dd8f3e5e51b5ef6f296a34c8a889a0ac3555
Date: Tue, 22 Mar 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647987684
