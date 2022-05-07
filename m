Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4C8A52
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 05:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651902418;
	h=To:Subject:From:Message-Id:Date;
	bh=gB3NM0ZIVlLrzpuz3oFLNW+Q+ZwDATx5mn7C9TVByK0=;
	b=GcafdMqFI6Cca8SswYQAZbp6o+bqXxaYOF/qRUwG19faSaLmS94bkT0g6kRzTmBf
	8RUjSB8Jr2DoZWRRfIjMzUX+lRsY9Qo9CITdXChl+Iyen1VSsc2UehVrbhu+YyvTV1p
	uwToK+8GA8b7aOfaGI6jTcSX0KKGx8JgLvuCnOMM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651902418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gB3NM0ZIVlLrzpuz3oFLNW+Q+ZwDATx5mn7C9TVByK0=;
	b=HjxvDUHikQS1iMExk+Isfdt1yBhgOXMdg73Wsg62WghTZAe+2rkg0zbc8bIaAric
	6oFcai3E6fSxy90JssvgAbnIcwy2hekaQsW+/Gag99dvNiw3dlx9F2EAhF7cDmCJgm9
	lfFuIlp2ein7lgf2Zz487GxpHd05VAyT5TrRxuYk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809d0e8d7d-3f06cd46-633f-4140-95cb-170c6e6bec07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cbf04ba1fb92dbd06a790a3cc31f581737a7fdeb7b9c12c76d0daae2d45850a
Date: Sat, 7 May 2022 05:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651902418
