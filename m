Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69BEA7A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647769284;
	h=To:Subject:From:Message-Id:Date;
	bh=rUevTN45OH/9hmQ1x7c/NgZEAnb1UM12HNj8OuDFXFU=;
	b=MT9Fa5+Z30P+Ztp2bmh+nOC7ONii+ldRSGkhL0OnZ+iBjlGNSq/9sBCWiTenCBLz
	7aqXhQKhUobN5mRBT6VTYss0Ko0S+2cc+cO/nklKxUJG7oEQI4jogHmuI4OizEM4IUI
	pvcFQw76gZp1v3ZPN1IkrZMOrZp9LvGGMf3FmfQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647769284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rUevTN45OH/9hmQ1x7c/NgZEAnb1UM12HNj8OuDFXFU=;
	b=JuuwRU0PFXnfheWo4h3AOpMcqMcCHsoG7bCsx/skZtWnS43+m8F0VeY5xjnshwHY
	wTj1W3m0h7yPWe1CWuAtLIfzophf2KO+zzmJifX6P/fGbCcFYmA4y6GoNd6yWSu/tXZ
	1IFWsfBgFq9r6OSo5JzLkeLJmv10ov9vuYiDqx30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6b3f0f3-20b43b2e-54c0-44b0-98c7-d3b1003a975c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88a86dbf7c98b0a4b704b821096484d8c9193274f9a5b5fe7611f0433062325d
Date: Sun, 20 Mar 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647769284
