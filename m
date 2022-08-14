Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74BDAEC5
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660476052;
	h=To:Subject:From:Message-Id:Date;
	bh=tuSpgGkWvemihiiJhzDNy7IpyGR7uS8dr6rFk7G5ung=;
	b=HStKGg1RiZwdBDJfroywqFvvNIWl7W9J+Jjo/5aqgKFlcbutNAjm0V+MxmyF40i3
	OpDho3e1vKDdEd4vkTpl7HEd5Zg36J8IbtS2DcSqOs+Dppc1mGvDPk7C5kVFduEK7qQ
	myoENrJ19+Ctfs/c2Jnc/yNGKmc5kRLHbDynIXPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660476052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tuSpgGkWvemihiiJhzDNy7IpyGR7uS8dr6rFk7G5ung=;
	b=SBSdNOe+p8SpK1fhFoEHdwxZC0WMx8lFa1V47xNQ+AaOeGQL40kO3ft7hCx4zxdh
	trXdZMVjQdi/rkMcZEYi+liOgbleGan9ydq36Xysf8yNNwlp/TMihihMKlCVGBLmkOr
	Ay/yV+azuRSXk3NTeHrcF6a9Qv1rXf86Kuf1PIuA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829c15d48f-27b2945f-30d9-47d6-a4f9-fd51ef350674-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0faa034f58e4f913d7edb494e6f2d207a5607a3b47b1eda25bb488db304b0386
Date: Sun, 14 Aug 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660476052
