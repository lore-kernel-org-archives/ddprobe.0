Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3185A29A9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 18:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655751119;
	h=To:Subject:From:Message-Id:Date;
	bh=TuCFDeSk6iK1UXq2Ta22Cm+71VzzQMjNclyZApDxMo0=;
	b=dpQq8BRqpbOQXOps4fSKq2V0isYnT2VO8c1PNTmAHF4SbEs3CtVu0OqLGpcKe3Bk
	IlFFNR64YLnoLpkDJpCg+TuXF5/Oe2I/ujHNy+ZuPr3M9uqfK8j2+vlEVeCmG+LTDgr
	UjVqRG5gHfdryT+hQNDjE7/sFbxmH4+Vysln1uLw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655751119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TuCFDeSk6iK1UXq2Ta22Cm+71VzzQMjNclyZApDxMo0=;
	b=Zrt+kluCvkp5/vAhaQju4eFu2FW/NDUz8lO96MC8J7W5OGmXK/CpUYwddBpdOdy9
	mCOvkOfTywV20lADpM8vdedw7DTLVvQniAcoqK4G9mqv/Za0wWs6Z3B7wp56uE7OlrE
	yjYJO3tKiKkkN6Sz2ESjNIeI5Q4wCETGbwZ6Cnys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018182751205-d008c747-083b-40f3-8e15-c8067142ba8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a511505457ce4c309bf1392892e8ed92adfdee46ae16b875841f249a1986b56b
Date: Mon, 20 Jun 2022 18:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655751119
