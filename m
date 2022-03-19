Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1A7163
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647703284;
	h=To:Subject:From:Message-Id:Date;
	bh=cvGj+6G/PMZt7fNVEzRrXiBW3I9xw/6lokn+qnvxmqo=;
	b=FfyZEpNGBWgh+cxy6Po/jargw6eOPwX+rqwRqYBHXKd/KgjHGFDki1Ty7AAbVj1L
	N2VKXrOJTpf2EqsbJexv5IQ4CfaRCXBigLRfrAjeUBWCTW9jumbLwaRoB5t/IMKDcXk
	OBw1AjfqJ5mQY1dAcCZBfX1dOje0rQms/nHjy528=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647703284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cvGj+6G/PMZt7fNVEzRrXiBW3I9xw/6lokn+qnvxmqo=;
	b=OtsaheVBB7FvRo/lHoOzRHEw2RQ+WONc6nHojpWPCq4rslNP24AI1XcfNyA9Oc1V
	39j5f3BgDJU2t8owI0BENQPczyumNtJolHRKvHOPWJ/BhsHoaQ/zeqHOZr0AntA9Bwd
	I+MWXz4RW56TCLwhzR7o9BzKtctYi+RSxPOnU6/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2c4dc11-392d1d82-facd-4347-9b5e-239ca4613f13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f181d7f2a4d42c113d3706a292d67fe8ee817808d5e3163ce9b419ab227dbc7
Date: Sat, 19 Mar 2022 15:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647703284
