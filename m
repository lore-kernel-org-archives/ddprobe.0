Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74140A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867080;
	h=To:Subject:From:Message-Id:Date;
	bh=/PGcCoxIOWM28ye8Chtk33amZEgDlShF5FxR/aXO684=;
	b=fDlyVBZALyO8osFnzTDOlIDXdMFTnnKEhKlXzgi/bUdmViopNrwgzsbre9lZEBzc
	gNEJ4qv+SDA//xJS9+ZhSHOkOa/Yxhtc75eE661VlJUF3N23htK9Vo2VmMfpLt9Yzq7
	NMF6xy5qNDIc8O/+5nP+GM1ul26RPeVXM4bCASys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867080;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/PGcCoxIOWM28ye8Chtk33amZEgDlShF5FxR/aXO684=;
	b=DIhP4wdSW+7fQPrSJ3CDg7N/8wFJyPlagBFM2K7t7cBnlhooeXWMGBLQPAm/PGqG
	mo6uZmydG7RowMiLNMpdBG543UFD3lq+KT/oqysOqF5+ozTbMcx0myvHWpGF3q8xqs8
	Nwcsue+eSg3o4Z8O2Nt0xeydm4pz4HhW4OSYCp08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9b7ceb7-6b54ed62-2009-4fbd-bab2-36b5f02db290-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b92c37d84025a40092b4c9479950ae9ff29b168afe8eb315e3712a84920cf8df
Date: Mon, 14 Feb 2022 19:31:20 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867079
