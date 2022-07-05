Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12BA17D0
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656994012;
	h=To:Subject:From:Message-Id:Date;
	bh=qK2K+VFzu43CX01c4yQOnOi8TBzmkz5XwPxHSMUR3u4=;
	b=B4wZSx7RwxB2+O+bSwwMoh1JB1oYqYazRacJMf0rsVy9jtYTaknBAHObAjEAkChg
	bD5aP3PITzEsGk/BL1JXhawgG7RmeVCIIRAlITZQcQLPYMi0tzwGaIzUHuimxkxxny/
	RZE5FQxy/mV1j75XYH0KJ1mS0HGyq+5mGOgmR53Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656994012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qK2K+VFzu43CX01c4yQOnOi8TBzmkz5XwPxHSMUR3u4=;
	b=QGRvHYj34M1kjXyDHQwK0k/RLAT0s42d/DEClfzpIUOnXVs4rhRDGR1V1ln7W7Ej
	Bx+zQJFzcxrSrP9z8Ap6jgTe+55onnwdsnxW74MadbsNJuLuenBu/aIrTZLfN2zHxE/
	i9FRH4buYMK3OtljAQvgrUt0MdTa0Gek31yyVRWM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cc8a1c6d-fbe11090-1908-4078-bd72-42d8625545bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b3317f3506ad2578892506eea7d3cdd42270101ddc05b1c823be6b39f782b90
Date: Tue, 5 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656994012
