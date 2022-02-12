Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E89097C
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 04:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644639032;
	h=To:Subject:From:Message-Id:Date;
	bh=i1blfrJNS7dk+onzXvzeiSJ8EPWkl0viKEM3sB8Yvzs=;
	b=FwBE1tvdpN//gVCrxlmFBDkdC5/f6ZpP3LWYuFIbx1TV0RYpNz54vTNEzvojssm+
	vLRBCLsxE8BZQKrm4AnWNedcxBrpB/0rm7BNq0wunsfOugSduN+Lj2kcAmn8I56hXWn
	I2llDXLKf1bdKe23LePQ6PnPRspi6rkqbDFcnYo0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644639032;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i1blfrJNS7dk+onzXvzeiSJ8EPWkl0viKEM3sB8Yvzs=;
	b=JggSrbooSW5iSyrP8Z8LfD5ngVNrEBP3qDawc5NMaHOyHDh0LDpefFPpBwvIA8LQ
	136b+kJuBqjWFYW3WQx/4I2O9V9PsELXuTd/hvE68842fn1Fc5L60ktphbsHeBZ1g12
	TJmHdzyc0I/ON5mH7n/AhzsAv2bOrN8pW9szl+Rg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eec2012ba-90c9003f-3d67-472c-af3e-42987401262c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6164112aa869ad6c3c4ffb30e04ded73273bc774c741fb4b057343bfa3bf1449
Date: Sat, 12 Feb 2022 04:10:32 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644639031
