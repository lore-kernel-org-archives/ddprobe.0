Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FF47E
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646728284;
	h=To:Subject:From:Message-Id:Date;
	bh=QYxEKqkgJzL60h9FzcnRBIsogTqIzJ6Mr8Ki9RT9O/k=;
	b=ASUAFxoB544Tbu3a7uH7NXXm0Dcw4+5gQaekpbs/k6uSA+u8l3vSmAFlF+kb+tsh
	5/uZ2+nW1j6qGTaPhkM1IhAqOAMPoZT/+W+4ysF5z5Fna8nEbSIL8alzfWmLCBZNUfD
	k4J/BuP3yBeyQnd0jqUVcLOAIIZ2xEiByblVxtdo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646728284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QYxEKqkgJzL60h9FzcnRBIsogTqIzJ6Mr8Ki9RT9O/k=;
	b=kOCMTuvQtkYCiQ/QgBABcqLcPv5600Ny9zfbwdFRXNC0Oel6EjUUBrkRe2Iarcdf
	UOPYqFfcwt+FlFO1LXE0Wd8Z0U1ATDOVW2hP1ODukkN/Y/IGRWSq5bKWImR1rnW0DSL
	AxGvHDG/kTvCm9pdU2+mp94XA6swRVqlpdYuN9yg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f68a78a29-60fffe9d-9df2-4de8-92d9-76cd00e57216-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ed09716c1ef15a12a8d096f131f6b5d6a82147e3cc1802389b7a70dadd73e13
Date: Tue, 8 Mar 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646728284
