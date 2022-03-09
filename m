Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B00345127
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646858784;
	h=To:Subject:From:Message-Id:Date;
	bh=Dh+hFZ+DetyiaHLxnwu8eJi2ObhIHFdyWkUfrpCTB8s=;
	b=Dz5QfxwguOKVS64Zwtj8kU/EPpm38GNGOP79tXAzU+DXYjTkEJlvVurPkruiAgZy
	Ca93id90IiRxcvbmwBpqkkblkldGD5D64X4gWW5xfqS03drhFnnwdIxwgHMICdGTJ/f
	Mhnew6fRcUmiPhYRDEntnsXr67d+liEc4QQt9BsU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646858784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dh+hFZ+DetyiaHLxnwu8eJi2ObhIHFdyWkUfrpCTB8s=;
	b=V7lBQiyqQcFZ5sGJQpgHMZyWjxIvdfsad0uNcSy6ly+uc0BnjMthOKqUmN8Q7A7K
	Qpq0C/7lSJua0iw+1wkrcq/OQa0Sj/8dpIR7EWW6W25kposDJlmAZMHWOwmhdNwtpWO
	w2Fxwf0JPKA0BwHMLR2YS+RzWZMux5KDyN15yICw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f706ed018-aec239fc-ca7b-45de-b872-95e73e041791-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21a95633652a1aa9e321dacfefeb34fe65016d75de4c69bc0f3141ce5f9b7412
Date: Wed, 9 Mar 2022 20:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646858784
