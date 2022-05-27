Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173681FC8
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 20:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653682559;
	h=To:Subject:From:Message-Id:Date;
	bh=8cEmzbKZougvB8bMsUxwp1obAjdIyKioH26IoT2n1RQ=;
	b=Z0wIhqbvPPc8MkwOaqQx0nTxuXSK3vo9mBS4UEpIj0nTX9fzLFdi5/V4AtkUUX2Z
	u/0N2NT3tPeDMPt0MyDyQs7Aa1jKifD11AEWZinTDOL/o9/AVExSmWOqOs797AMNxaO
	TjTCcyVHG8DyGsL+9bsjLT1OdmhVyUAc1yaxLZzI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653682559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8cEmzbKZougvB8bMsUxwp1obAjdIyKioH26IoT2n1RQ=;
	b=LXBxeN67+FYzeZ+66jBPfkqJNqLRxTiWOyTsYt7HNA4Jkt/cTa8Z8XbI/8wFpHlx
	uhd0QHk8KW4iVNU4QYAShwlm+w2dU+NrPbnYD1kLIyhcJEvIzYDPZUBMSqqZs1mDS9c
	vV+JWgj9bZcMydxrhz0y4PzsuLqZirEHjkOnrXKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018107295970-4645aff8-bf90-48f5-a4a3-3334d8989cbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 143c8ee3af702e48795487917409ed32bd58336fddec4a84599bbde2d7164d9a
Date: Fri, 27 May 2022 20:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653682559
