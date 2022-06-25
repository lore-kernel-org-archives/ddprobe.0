Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155BB7C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 13:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656164212;
	h=To:Subject:From:Message-Id:Date;
	bh=xlWRTxvSlCeuuVHCRY00ZxSxlmGoQ7UJijXOux7DXGA=;
	b=kwYvK053jaUcN+Cdda+HmUZGnzVO2D39dsZxKFWFIDXqJj7/Ox0nlzn+d3Xw3ZlS
	3nyvMMAnlLyl+Z0cL+kC1VpLhlwUjW4u9UFJrAKmK1S12QGrb5saJFhP7JTBgcXEA8U
	uIxu5YWbIMngHimsNgRMOE2+/azkTLJO88N2NQtY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656164212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xlWRTxvSlCeuuVHCRY00ZxSxlmGoQ7UJijXOux7DXGA=;
	b=fkUnkMOrF4UfUL1SLGfW1I+XdDHWXK6gwL72umb8wBvaXNpz7zRrcmKeUYxVV6yj
	o0bBfJwO2dKruCM7Wztsbg12rE0qeOusOfLdseZieBLX5crFoS9JFVrgNWGz4be7/cm
	FIdtDEp0TKa0MJw+HKGX5wOXvNlM3xDJMtx+eFLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819b145e73-222e9068-48c9-4c9f-af00-408fe3015954-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06a39ab5666a2609b0895f52d329c0c0f5e81656b8702fdbd70f651b82affad8
Date: Sat, 25 Jun 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656164212
