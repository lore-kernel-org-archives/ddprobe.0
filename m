Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0995628EB
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 12:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652187299;
	h=To:Subject:From:Message-Id:Date;
	bh=GDuTJ2vTwMcxN4/eTRSHS33uW3TBAXid71wUeWN3LI4=;
	b=aBPxQ8qIF18vb4x+3e1L7ztfmSyYRhyKlHeXMgW2VSUH1JXWlxwk7oEDj1ZVOn0E
	01gXmFAn/AXQZSjtmM7qbKzj0CPrwpHzAbNCYZJmXvgtP0MmKQRNqlXpxdmYmju9lKV
	bsQM8E+1g0LapS06ADfmtJFWMglkPlFLebBIk6eU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652187299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GDuTJ2vTwMcxN4/eTRSHS33uW3TBAXid71wUeWN3LI4=;
	b=TGB1W4m/C8MKe51D31FKusK2EH+GBglA902jL6/ujSlh++U3fdGAYx4LTHdImNbX
	1Gvd4JBm4WXeJZ+ta/Ezg+kLSGlgxXHu84+xFykkb68AmiLmBzVDRtCLIIRCavtVSiU
	dL6GzUHudiNhL4rDeOeURcGYDfQiulg3lX3M8LI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ae097df2-0bf98f0a-fbb3-4983-ad10-6c9b33847e0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2deb0d026c9d9a16db0cf3a2299d2287266ee66952aad97408c5e702c82b1ff
Date: Tue, 10 May 2022 12:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652187299
