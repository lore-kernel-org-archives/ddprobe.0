Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3881854
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 07:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658387212;
	h=To:Subject:From:Message-Id:Date;
	bh=0xE5aKVLNwHxGYySwT5om/fP3CNXhE+lEJsuZ2bBgbo=;
	b=JH5h6wW1bGbknWLDinvuiP3JFdiUu0u2u/oQOvm2RnsxcCFHXYDL60HetXXglTWu
	N99BD8OtrmlcCYLUgwF31XPQg/vzaYSQIYTD6ENUEq4cbrVrW6D85qjS1oxgr2MPkHN
	kTebAJk8jkLlg7JhdbRqYAaJy1e/mxFffhWrjrHU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658387212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0xE5aKVLNwHxGYySwT5om/fP3CNXhE+lEJsuZ2bBgbo=;
	b=JkCevBbRNfDXXCS+RC6Nmi0Epn31o6cdaGvgQDcRBld5ISzYaGlMzKrjR2+Gplbu
	or2jDdJ+qbVLWd+OLQJd3t4FigN/gJjLuUuW9zjNOzSt8t3DO1zLt6FlIfF9DIlC5vi
	juCiwGiYYeNdhjgqLXBdtRwdSlxRwb1R/tamQ7Mc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821f94a7e3-043d2fe3-278e-4a88-b67f-f3e7587cedbf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48f6e147966ff84acafa6ca65d24587c54b18c5dbba47e3ffad91ec5a7f2f81c
Date: Thu, 21 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658387212
