Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CDA91B85
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645730185;
	h=To:Subject:From:Message-Id:Date;
	bh=53oSDGhnN8DD9ddruHUATSEF3TtsWHzAsEFIc2waSNM=;
	b=a1Ngpsvm0Eb7yc1MvlN7iKk9JEbaoC9I3VFqUqsaATyh51ArfZPrVEXFVBJpLOb7
	CZlnmt5bkybX7yA+sfmh72Xwplnf9gGDXUwzTg3p6B+NqulawoUtfNULyNJ15PvGHFB
	Fo9vLU8YdjgCsL4ib1c45SzKMoFdQO+H6mVxFu2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645730185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=53oSDGhnN8DD9ddruHUATSEF3TtsWHzAsEFIc2waSNM=;
	b=ZVpD/2H5OJ5kXBMyQW1podcIzKavprVf20M1nwZpf0RAV6Eqp/HsuEwerY2DOKbi
	YXbxyx+iLC2W2qA0LoYuD6fYMnwUTPPqogVWpO119l4doGX0NIrerWrGLJYV0oPmHup
	2vS3CMGbh/9A1bqgCS21Ab+yCm43GBQtCXD7JB88=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d29be0d-59d8a27c-feca-4b3a-8d25-9155a9b9d051-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70d2c792d2ee104c114091ae72004da773cb845e17beb79877e29cb098eb8650
Date: Thu, 24 Feb 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645730184
