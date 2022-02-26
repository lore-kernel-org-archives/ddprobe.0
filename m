Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39C83B5C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645891285;
	h=To:Subject:From:Message-Id:Date;
	bh=GXhHvBVmhURNo22nt4JmltiiT1LcL4XhubQ1TCl+OSA=;
	b=DVvKQsWDlIk1f0ITIgf3MNaSAFVMEc/AsTKpskMuAjL93dd4ZsRYO9ErQKaar5bT
	ADnmCpK3z8BFaI2A0fhwA9l/36hNTT2oANTqm1H2sRRsX3wUPJETRyuENSSj1pwhcKE
	R4PTu+hRRgAd/CIfVuxJl5irAqoBn1uU6LJbCy80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645891285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GXhHvBVmhURNo22nt4JmltiiT1LcL4XhubQ1TCl+OSA=;
	b=Ekbl2uEorPHvRyiOlV2b9XSlZcktqYsZmQ8xgTD7quu1Uw33KfbEePyLvtxXHTwL
	s3ib8pZ1+9ZBLihNU5m71uIg58+8z6PYYm63VWIrMxCp2BTtNp0SelKX76XpfACWaHR
	drpQ5gAKZsBI8YLEXAZo4pF5lSrU9fp6/OfM6C9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f36c3ef54-d569c518-3f4d-4b83-807b-6249a0d236b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54dd9a79993ff3608467857cc30ed1655079d325f801f7c46ab22a4ac92ce7f0
Date: Sat, 26 Feb 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645891284
