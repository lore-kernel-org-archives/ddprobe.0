Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E1F632
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 12:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649420578;
	h=To:Subject:From:Message-Id:Date;
	bh=n4CMu5SureYiRUKURvjipeX9sgTcEZ1dx9zCbLynZwE=;
	b=fxVdQdKChB+7KPiDXcfcR+cSLctpWYwkOFB+MRffZEzeaD0MwB6tZPN14TKjiX5h
	jgyPxdujfmRfmjjVPQGuNNNfZYfT2LC8K9DcqHTPW/xe/RfxR8SKF95CJZsB3+MpwJt
	qSX0m5oVB3Jew2pWHFKiAZ8O1MRf/W0yXXmZQ4Xo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649420578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n4CMu5SureYiRUKURvjipeX9sgTcEZ1dx9zCbLynZwE=;
	b=ZmWBCCJMotl+cbzfwMNTQJfergLVGt5eig9M2a46T611pOSREOEJt5n+2fuXAzGJ
	KZSJELkU3pc6Wi2jCbD3W4qXeHb8JeFOXdqLKflErwBmZs6NmSqIE3mY1bk5WBoCe04
	qFPyvsMgZNwlsmDJ1l7FVo//OvCq+Mx87deldSJc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800920adb8-0827989a-972f-4a3b-87dc-fac4a35045e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 810ba9d456e67656309a1497a50cb2f8d5a0ecc9d3d59d063e6bfd15b74cfb68
Date: Fri, 8 Apr 2022 12:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649420578
