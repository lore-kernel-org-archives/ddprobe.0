Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D597A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645988184;
	h=To:Subject:From:Message-Id:Date;
	bh=3AldwgRjZ/rPIzSuT0uOnxKvL2xjugZWCcuZbciN0Ug=;
	b=fsWSQA+UCxtb0UNZIU2BWUS25lszPJtztttseXMMMtrYXni5H46tuFJRc3kicF6E
	FzG5ba4HV8N5xghaC9RLn5FcAsnCOWO7x2OB2n62dEKmQJeIPhkFelrdH/Ow1iCcHK3
	e30AsdM8cpx/hPArv/YT1y62buoxcXvxFnDP0SMA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645988184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3AldwgRjZ/rPIzSuT0uOnxKvL2xjugZWCcuZbciN0Ug=;
	b=A+04fqyy/NwjGDUH8bsj3lfBpOa3JM01aLTn59BE8AkbzIXhThNaXSYc1oNFZPU5
	EqMDI2tYvkJXg77j7igZNX55vF8EHxAkJHI6DafMGAueP5kB5/uAIMPEXdeEAwsyJod
	uMm/H7I/x7COwtYlSBiFLkpNotfrGU5uLjFnoCSg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c8a82b7-92b4bf07-7e9e-4cb3-9147-bdf9b7e8fc9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4ddc35e031c7ae679e787adfb99eaf5746d3b170932b5bdbbde467a9cdc5249
Date: Sun, 27 Feb 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645988184
