Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DED24C64
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645223785;
	h=To:Subject:From:Message-Id:Date;
	bh=RaWzEPnyeV4HQbgQMm36mcx4+yJ7BkXw2pTzCsKNZR4=;
	b=F5suGTEU3qhkPpIUkZCd4CHEd6NYGv9eRFvceZQzkBRdwuj+j7LKM64TGPmRo+1W
	uYZ+LSObJbH2T9Iy/L3Hfi5EPC7oC6GISAUXWTY/qsifIKZxDnXt6CdOa6PNn2z3R2m
	KMh6mMgu1sYnJbFbLsh6IFSBnmLCjxM0ziW2qeGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645223785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RaWzEPnyeV4HQbgQMm36mcx4+yJ7BkXw2pTzCsKNZR4=;
	b=akaGtrkrwPkGF03ax1Zg9F7hR0KKYaRPJd4O2bXK2N61GS8Fli1ey6N4OD/lDUWX
	A4yoza/9GFRosZk6YaIn2U70aGw80tPI0SL+2K9iG9tTetA+HVPSUYQ8qdKIykLYPX+
	13a7Hcd9B26wfNEtJZroRcSd43VFw3nFgbsYlQlE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0efab134-c32a9382-cc29-4851-ab58-59ec73c51269-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29b6ebbc9dbdfda0dfdde23c4d4570f3d64c1610196eb36644deb4a07e4fef82
Date: Fri, 18 Feb 2022 22:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645223784
