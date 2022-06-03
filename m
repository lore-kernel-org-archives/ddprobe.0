Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A440D7E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 21:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654292099;
	h=To:Subject:From:Message-Id:Date;
	bh=BlBcEEk+f439wZPDxglChlaKHaOtKg1EwefpbYUmIXc=;
	b=e5Pjo2il8O9RJyw3MRTGcjppEPUgBRx+28wu3FwU+xYdDfF7mWR3U34HgdxUPEAe
	JCu8TbUzYTceKDRRqiPzsdUHbk48RdLnvVfDwC/iylCkmI7SqDN1TPzgiVi2l14/C+H
	2TVNSU90LWfgY+ZFbH5gyTK7xybTrzP0KULsvElM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654292099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BlBcEEk+f439wZPDxglChlaKHaOtKg1EwefpbYUmIXc=;
	b=eRvJDwYjsEvi/0Y1fB1E6d/xQMfl5vgTlRSG4znWzhectu7AOm+VjTdg/seAYYKc
	Im9gajAxyTht3CgFgM2d1IIjIy2+tG9E2Ad1qpziS+ToMvWXIWSNKdgdgdpdMvyiK3R
	P2u9ArYH3tVkIAIcyuoT09jDFFS4P3W4ClwbtL9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812b7e30d7-dd267a62-edd3-4257-96cf-cdc9fe7ac6b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c469eb654389279ea4d60b73e398f808e517f46bf5dee86a9b5c1c21a8e1eaa
Date: Fri, 3 Jun 2022 21:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654292099
