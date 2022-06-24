Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8567C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 00:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656029812;
	h=To:Subject:From:Message-Id:Date;
	bh=4OYZE5TCVKRj5wKOCnV1qPYR9CHqwObpACcicRCmn24=;
	b=GBWjHs7UZtZ2vAhlaKU/8XyDhE6ju9Y3EurjmaGhdJsxsXmycWyy8NrouBYLFbKM
	xpcR9WWFN5FmqTYMnNlsurK3qOMhmXNG7MSXfM+063PGzzYjEYmoUS0PLsfUDZz8wtb
	GgCtfQ2Pvn0tp/4TQg4MjMz3wkq8TVCsO03cpVdE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656029812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4OYZE5TCVKRj5wKOCnV1qPYR9CHqwObpACcicRCmn24=;
	b=A7uyP0BYjQ8QWEPOAXCve8oeZ4+bp95HthF6GSaZmzxudCTpV43zlwxQwMVwMI1E
	R8egh/1x6zlkCdWmKrtGIMP2Y94T5AfYVa1riJLHVnoI6ErGeGaLYV3F1EQgTCK8D01
	8urq1E5frJyDxeBE8v+mkF7DB7XLyryl74vTOA8A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018193119627-22ecec4e-71c9-4448-b44d-03bc02c3e522-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55bfa97b9d827589ed1452c05396c8a358a0c0e73c02ac730600a6dac613b71f
Date: Fri, 24 Jun 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656029812
