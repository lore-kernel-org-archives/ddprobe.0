Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAD7622
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 05:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654146179;
	h=To:Subject:From:Message-Id:Date;
	bh=xf9ogWsLK2IBeKU3RVFXI/4RldIzoUQFTaiTZ6sAhXE=;
	b=P7ZH78Y9iEm22RAu9ooWBJ47cCs0rVdxFE/kzC4oRa7auR3r5WSlyocn/tz6kTrv
	OG3oYIRyggOkGa63r17ZDwtW3QCgiFjSshId5y8qvmLqaNCTX0wIaC5q8Ikc9KdY7Qp
	NIQH423boCreJU7wHlMox4N2ES+ohphuv0nlI2X0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654146179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xf9ogWsLK2IBeKU3RVFXI/4RldIzoUQFTaiTZ6sAhXE=;
	b=XUar22xHhblDN9eK78MFkW9nq0O9s0v+tRNX1WRaPKyB2BXcFUAkaIQU/86A6/sB
	vNozJb278QmtVE1WOxInCSzAnsdsU8w+Ub9sh0pXHsVGWMct9SReeEzOdcmwwyvi/9b
	5cp1SSKwKMiWP9deU/3Y5ulFfwWsPDa1pyd72yHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018122cba0be-fca3a6af-7ac1-4d32-b4da-bda920ad09c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a01abad15503dbd61701d6b8b3fe409ea3e3b6716c81ed4927e2a74a31f8be23
Date: Thu, 2 Jun 2022 05:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654146179
