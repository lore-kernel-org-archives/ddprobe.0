Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D042580
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 16:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655743619;
	h=To:Subject:From:Message-Id:Date;
	bh=HigTVzBixJORz8pUDYg1C21xr98tlu2kbDSnOhpoQcE=;
	b=VZIAwmoLHEon4KyVkfD40KFLAKJJOIBlUXyP69On0YZbMuINVF20P8+94omUY2Ih
	1m6KQSVIdBpvZyM/+jGngKbK221Z23js6oJNmhZT9QgbJanRh/jbOFkn7kxoPkgWLhd
	6ZLZHULTdt2VekXYWUEqFwTvS+x/Wd6XH9sdfY44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655743619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HigTVzBixJORz8pUDYg1C21xr98tlu2kbDSnOhpoQcE=;
	b=Man3iMWVcozro/A9f4r6PXS+ZN9AJccZRxO001LDKgv13G6yDlvhNGENpMqgkqCI
	Qe8d0sOhdJdnp3F6W+8aWS2jTRQdcmf1b40YXVOvM0zFUv3i/pq94u4vZ03fd70Rq0c
	63/XbrxvrUlK3lK9aMiX/MoHbHPQVczxGjoUPmKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818202a0b4-076fecdd-effc-46bf-ad76-ab0cf9a0e177-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ad87c00b21b147740c3c36f5924afa018bf57f9f3badfb7c67f28288f2f871a
Date: Mon, 20 Jun 2022 16:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655743619
