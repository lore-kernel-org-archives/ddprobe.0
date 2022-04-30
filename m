Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEA21852
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 05:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651296418;
	h=To:Subject:From:Message-Id:Date;
	bh=GgpGx+jXynWLgjJsB3Y8gi2MubZzfxGKbspnOP3UaLQ=;
	b=JlDlosrqpWoDCtYrRhZyvotC63LLONh37nzystGvV3647NZQVqJ5+JglziFZ9vYy
	+VHldoa8hCUhTempy0y2uh9k7wkJPTqRiY1T6b8PsKhI1Ozr1EDA2uCIo6SfU6tGmTR
	2/8a8iipyDeaPcVEwaI5Rv9ogoSOUg04fF0STr6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651296418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GgpGx+jXynWLgjJsB3Y8gi2MubZzfxGKbspnOP3UaLQ=;
	b=R6tp5IrJbrVeo8+sPnLcZh5butDZr77MBasRDffK/muCZmrnWjsYPqyd94Z1tyy3
	ZOcV6oC3hHV1eBR5Giw9x33/UzF8/ckDIxsRdxW9fTsCyqTRIu+n9YTLmNVTOxkFYhl
	de2pAV5Baf6yDjWO9f8g8a1ZeI4Hma+v+GiEiqO0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018078efba1b-1d5814db-b1b6-4943-bcf4-d3b303be6661-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17341ea0ffcbe2f4fd0cc39beb3113a10f1b16f527f812c554be840b4afaeac5
Date: Sat, 30 Apr 2022 05:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651296418
