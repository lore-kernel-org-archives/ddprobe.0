Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6093E7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659332452;
	h=To:Subject:From:Message-Id:Date;
	bh=5ginww9vBplmDnFTr+UpJ67OAc/93lNB7rKBYXyiH78=;
	b=EOikc2WopspeJS9Q7vFQ/fwUOXS5eWbn2+92KKUdj920BP0u76WBgFOs+AhR8g3Z
	XcHFE6M/I/b3YomEljBp3jxP2P3lgAw66iZanKh8XwEIWEStzQ3USCte3HOSKgjaOla
	bJaHMeQibJj3qxe1hQnzntR4Ntl8YKcWbcvqkA5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659332452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5ginww9vBplmDnFTr+UpJ67OAc/93lNB7rKBYXyiH78=;
	b=B65Kyfqxs0P7x1YBwQgO+Wck/l+ef46LY7OhL5lFF3yUhF90VgixEvF7+LaOTbp5
	Kq5CPwZrKhumxotbwB+b8ByuD1FQQKP0pPTjKqw7/xSPPH4NkTDtHIvXRUjEWNbgeH4
	IxpM+PAhgnCtrNGN91x2881Y+OTyjAHu+ZXGhiPM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018257ebe0ae-9834d0b7-970d-4062-af1e-bc7a6ef09c65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04622d19451ba6990f796ad8e29de981cb3882a90c695797ec8f339b7ab81768
Date: Mon, 1 Aug 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659332452
