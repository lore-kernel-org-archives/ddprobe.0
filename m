Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BA510ED
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 03:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648093438;
	h=To:Subject:From:Message-Id:Date;
	bh=Dv6PCU5Nip6ZjyqClTqTqyTrwZkB+7PzjJphK2/cuyA=;
	b=HhMA1karzrPBIxofY9Qpcp2mip6P7E+PoVPxEAU8+af5lpoRwIH4IZyb4HI05lmf
	LagoJP2KtjLFTAv6ToBY96TDEyK0/+bX8xLUuhyx+Xnz8COVGLDEqviFwBnqrUaDBv1
	xbpwSVEwBcr4EPInxySN3MwZ79785qtdFUd9A4cQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648093438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dv6PCU5Nip6ZjyqClTqTqyTrwZkB+7PzjJphK2/cuyA=;
	b=YEpohs6gVgbPB2fTWQ2zbs4wIPT/0NV7wavu3o+aTyxmRb9X5X85I/+3zlmJc0v7
	svRqcE7qtReFdHhA3Rw1jblNJVqJr8o5kQx2iEx1kqjlFSUkIGUMaJbPOGx/ePNBirv
	UxFyoiHi214hgCkzvZuZLm4dEXf+nJ21ntx4REF8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba062124-dd15d119-afdc-44b9-b39e-f21c95391456-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40240d11e09ec8735c4ae4e96a7010a64347464b1394dceea927db55cd9880b7
Date: Thu, 24 Mar 2022 03:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648093438
