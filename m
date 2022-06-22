Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B511843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 15:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655911079;
	h=To:Subject:From:Message-Id:Date;
	bh=m67PsDD6456YtWF2tW7PiV33AANh6h2yW3O4+YnsDno=;
	b=dGgJGA6d3DjdXTB81uouL7zuvuJtvDm6ES7QQOAPHQBo4yBRjKT5xfZeRlq5pAUN
	PxnwMo4PpoNXbMb3H9P8S905v6EdQQfnsvW2FneC4EJYLoeRWjbJ28HLe6Mc7RS1krj
	zDvQD7xXFxRPLIh6bgZHzYK6skuzz3r+0ASHyTYY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655911079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m67PsDD6456YtWF2tW7PiV33AANh6h2yW3O4+YnsDno=;
	b=aacLNnyanjp/EUIYmxGosixgpXS8ro3v8/zB838Q+0Gj1k9x0ODrAnqyFc76Wx6Z
	CCcWS2zta3HhhrXlgPl2VV7qk5khsUInxJeCw4UXKTgTVcc8LCArN5MKnjarVI+dRq3
	tfe/xP/lNcALYbxz4WNfc/fDnJGQtQa5cNba0Ke0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818bfddd65-43b6965c-e0fb-4664-9a85-5feeb9fa91b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 930fdf21f24d8c4a4bb1b60cf4955b133a5ae5a251348b09a1e45ded6c4bee35
Date: Wed, 22 Jun 2022 15:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655911079
