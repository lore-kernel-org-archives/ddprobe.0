Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C5228F3
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 08:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658652412;
	h=To:Subject:From:Message-Id:Date;
	bh=Ql83ioUTELfwYXaw5FoxFGXPnFHh1lgJ93/GUlG4LPY=;
	b=IYXa3UtvokFYCU31kjJC0MSheKNOvtrfEXykpItLTtvOVvzSVeHmcDZmPrjYprK+
	0e92EEdy/LPVDmsayzURSrQRYAPSvZJaxVRZS6BKUlP9yLOR0IfNG6uFDfcJXMtGWaI
	7zmQbNj9resKT6MoEZZQhalG66e/KgnzyHl1wpYU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658652412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ql83ioUTELfwYXaw5FoxFGXPnFHh1lgJ93/GUlG4LPY=;
	b=dU0iH77MAV0M8k9Leb4ylq0NkIIlU0IIurkJ/+G8fhSORyGThUDlmxZZYVixvj74
	Hs481WHMp82pImwlsFn3Mc8kvnhU8Fx58Ed9CG41V1MCWfy6yVH7X51HOT3fMDa7aTP
	5v2KCzKijIe/aMwucYwgzi6XLUQ2IRHYpta4DvPM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822f63499d-107e8d3e-b094-4e90-85f5-4e3de46938ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 470ab7c5633e76ac23baa911fc879a2521c095515ce812c299deb87a30797c2e
Date: Sun, 24 Jul 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658652412
