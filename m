Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740AB38C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646637384;
	h=To:Subject:From:Message-Id:Date;
	bh=gWn2HDOwKe8xmlIOTBon4dPvibM+0e58UOndDMmc9i0=;
	b=eKna+Rp+FeRtCPEESvFA3ve9xUtaH6o0dco4yybKhWJDFdS2QdH8jlxTeJc/WWdW
	rm2tzH+czqLyv0pe/EJy5M2WQXORYeU08IgPUsdvDjKo6qgZpvsU4byAXwhWzUrwzin
	VRJzg5jLIV9Teh/j2CkZExj1EVjNNVHPVqqQwNJo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646637384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gWn2HDOwKe8xmlIOTBon4dPvibM+0e58UOndDMmc9i0=;
	b=F0QtLTQET83+Y76SrzUXxOOm7PFp1ll+jBfQAt+sd17GzkenKx6b3hsR+RuRE2/C
	7mkClegnn0Nwu08rA4VIMBrdp1GYUOtNhMdwXuZXyIYUSzRKJIivAVDnAYnpC4a8/py
	uEsc6qAhqPVna+8wqHAcyVHtOqr+dJP9/MzqZWgg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f633c8465-30ecdc05-1b6f-42d2-91f0-54fa69c9a20d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae347b4e3b5576c32b06578b043073c026349200061e606ce98d87d66bfad0fb
Date: Mon, 7 Mar 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646637384
