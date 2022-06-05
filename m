Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF90D257F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 23:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654471919;
	h=To:Subject:From:Message-Id:Date;
	bh=UZYWw7Elq1oTaDtfTfyrIKGt81Hs8uGwDpXs5ZlmLh0=;
	b=KaWj3juV/bP3dSVnY7whNBSdVJlcLfNwEe95pxWoFb4bum58t94DsvKvpqATjAdy
	K0R4SbBTGsI84jvcbW8P49ZOhF52+RiL2hEf2lfCdlamO2UOx4P1OowKmZtM/HGFGEw
	byXcgmArq/wEJn0UD/T4HjqHumkAyR6IcN33eR7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654471919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UZYWw7Elq1oTaDtfTfyrIKGt81Hs8uGwDpXs5ZlmLh0=;
	b=ggHXYPOnrO+Quk0bLizMfuHmAcqSWElQrwrJDC6iyeHSwsDUIXPLAKio0c0yR1mK
	a1j9Gck2OpokrRPbsbdGgxabV9EHmW4BPR160l2Ps3qGXid51HXDNYbAOdgVXrqxGYB
	TpzmjE42DxmrLyRCfVrJT7YogNneDiw+CpQtdd7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181363606d6-3b796072-cce4-4b6c-9e0a-152836fc9c31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af7df3ecb5f4c3dfb26f9cbb62811f761a350923687d230aef44804f9b4364f7
Date: Sun, 5 Jun 2022 23:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654471919
