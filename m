Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1210D2F36
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 21:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657403212;
	h=To:Subject:From:Message-Id:Date;
	bh=VVjI9CDZ8VdHSJ428iVOLFyujmsnwJ82fc+ITgglI8A=;
	b=XFxNbdkaY6IcXhuFOB8wwgFJdSbLcWid5RDEusKWLF/gvBhDvf2PCIH/yLTkKhGY
	qeoh0FP30f0J7c7KhL/xg3BsPAlvRw79xrD0HRs9O9Xd7WIaJ2M5NW2n4pA+L3Sxyjb
	avqtQkBTm/Sn8ejcV64xd/LGeMATlKZL5yr6zf0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657403212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VVjI9CDZ8VdHSJ428iVOLFyujmsnwJ82fc+ITgglI8A=;
	b=hQm0e4xwpAXH4VoK1tlYPxaP+W+qTwa5HmRylbLwEnt2qMaNA6b4oHpc/hKbpgqH
	QxgTkGBqA4ON6VL/7s/OTATE++4y2kMUPG8vQGkj8SvyMISGycW30XUsViSCgxtHtGP
	b2POfF9J6yd92eogEjB+pqnRklSg8Dn1oVRC5Czc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e4ee01f6-97ac6207-f857-4191-81ca-f0fde8d14fa7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9cf4970dcba7ae499e9de3e8b75edd935859ea520b215e752c9f4a5fba17f94
Date: Sat, 9 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657403212
