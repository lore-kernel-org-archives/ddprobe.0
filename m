Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253567F7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 14:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655735459;
	h=To:Subject:From:Message-Id:Date;
	bh=ZO7GlG4HQ+0ap4hrbgDJH2EOCRTi2JZZLMRplVUQeOA=;
	b=DXUJtknierNC1jGhbGssfQlFsIVcXgnUeuMck56Py38BIOWqFCygP2c8oFqUFjzS
	lDn8vtIwRHCIL2cRoHusFbXmZsYGRlk/NiQaFS31IpMERZT/oA4WS7wtVJQEWnRrlHm
	+0Di86W9jLKxf+dkOheHYLLL8yYfKl5Pu5WTAb4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655735459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZO7GlG4HQ+0ap4hrbgDJH2EOCRTi2JZZLMRplVUQeOA=;
	b=M2tK9CHAZC0kFSeF9pmxZRBH3tczeuTCR5EKMK/zurTS70ieevtG5zhZY51vwjIM
	3MZXPhj7GLXw/ETtutdjrLFlb9W1u1Bg98zq/UY2t5dLDX47FyaxxOd4UJE3APpVISH
	GGxe2CS8YzJ1932gu1HVtkSLHs/10RkHjJ6LGELE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018181861db4-811a480c-f498-48ba-afb7-ac1d703fb9b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3de9dc129d5e28ef1a9adbb3a62a3d48485666b848275260f7c21ea52e43ef2d
Date: Mon, 20 Jun 2022 14:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655735459
