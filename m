Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B19348A3
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645180285;
	h=To:Subject:From:Message-Id:Date;
	bh=orX12EfsNGph4yaJUB29L84zXDykV8P7dmp1XKi1/jo=;
	b=SxZpe0lDsIAmYxnYPcF1xUGuDNqfPgtAcoc2nGLACLiXKMZVv9AXFtkJxK9t8UHX
	nIauibpz32uYQQavEEAFn7ROvUZmzpKbVmx6J1nxfS6BMdmx/j9oyZ8H99keP5OufSK
	fFsPfwn6ZupkftGRiD/+upUPbi/IMlzqJcipBiok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645180285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=orX12EfsNGph4yaJUB29L84zXDykV8P7dmp1XKi1/jo=;
	b=bT4f80SvBSaqBzLv+Hwi2d2VYkepBaP8ZuPG29k6rj3CLJ38z1bJiiNRgafnssaG
	uiNo1+Jl+D48KHsQBe1WG6JNhDgEnsVLmLLUTUmbm0ZjWNB77e8ilPKFsGflO35DKkO
	9ZV4bpVodITa7I/S4tgzhvkHUpiSCBxqPF+wfXXI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c62ef75-0a118eb3-ff63-4551-87b9-16de6beba8d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc8aae52d61bd1994388d255c3a64e3e0ab651501e98b497f44bea63c908f160
Date: Fri, 18 Feb 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645180284
