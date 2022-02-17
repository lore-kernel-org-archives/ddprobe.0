Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BAB43B24
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645108284;
	h=To:Subject:From:Message-Id:Date;
	bh=Gn3CPpmJUZcgcEDZnRt0A+xaW11gE8iK0GS5PtXImR0=;
	b=brhm6q6/FcKtAYELj/qFQ4ZETbdkUCVPbB40ADWD5gnb9AlYhBKCrfukPybj9LEy
	XeEN+5x4/OtS4dPRHTd55tCfgGwvgu4hHTvvWEIUYKhXK1ieOAxfUD0inh+Tu8qc8r4
	yYcajzfvlneSdvvJ3hn6byM3Ax4GX+hFrBNhE2sc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645108284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gn3CPpmJUZcgcEDZnRt0A+xaW11gE8iK0GS5PtXImR0=;
	b=QVUn97HNjwi6fG0CGG4r0B8ItmuekNSYGv43H+o1Ky+IwAcXjCUsprcDIXuLbCOj
	FtPc91vbzzp/d0LczI3VbaEuXj5o5XZmKP/wapu06swVPWsiGHd9zyTm1AzpY+yF8rR
	dcJz7+CN+P1dI4iqO34LOszQizVFtFhoOcmcEr9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f08184d33-924157ba-ca26-49d0-8673-cf1fb9388fe8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fe36616ce9bfa00e7ea7ce3e263a080b2e55c106c07c68416f91662f388f97f
Date: Thu, 17 Feb 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645108284
