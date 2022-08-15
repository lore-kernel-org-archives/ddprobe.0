Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331D110EA
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660535452;
	h=To:Subject:From:Message-Id:Date;
	bh=XXgBFa+20d8M3YrSJ3SxuYz2Up0AhwLKAitV7U1L3EM=;
	b=lK4y1lUZAwUxJVwfXT4Iltj6gxM8YiWj8fjNvYEz2qYGog0/QQY8ntXmcVdFlSjK
	jX2XDMw2xxZVeRb2A7220hvoKGkPpZFqxg6ldvZjiomlTlsGNq86JeYEO12GzZCGBXo
	YasqZWVNRf2kGkR22De5wuA+AWzblGdRmKlV/InQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660535452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XXgBFa+20d8M3YrSJ3SxuYz2Up0AhwLKAitV7U1L3EM=;
	b=UNBQOz96P3zfGomwPeRjoLg/zZPyI483qdNWnexOLK1xyLveAybXZ3xTGRh1+Ccd
	kBd8CtFVA38R3dho52Lol80eZpfCpmu7avduoW4KuwXBqYZdqzmuqzIE1TbAsGlgcjG
	NayOp5vbZbK1UD4vJhwzBvBpi66oRyqQYq6OL3go=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829fa033b8-a9a8ed4a-da76-4be5-8873-7f6bc4080ba5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd4ca5b9dd0d995b14b9513a1d1a1ae3f466a72e0539e616b9a610e222320f48
Date: Mon, 15 Aug 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660535452
