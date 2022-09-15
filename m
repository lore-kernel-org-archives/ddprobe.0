Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE4E2F24
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B705C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663229453;
	bh=lrCrdV8jFs2hamO1+rUvuh1wAOKxEKn1iEsTFMVhs14=;
	h=To:Subject:From:Date:From;
	b=hiGSSlXAg+64MXLnjX+ZyflvMSTZiLdEXL/naVTPNcGxXnr+Pz29stBAV4nnHX906
	 j6oyDrbKtNlxLnWnZUhzFcBO0hI2KSxl/wVWSSJ8k2dB2yDPdb2m27x0MRtvq+tsjp
	 N68szRR2whFB1tmrJg7Z8rND5A6BuwnHIAkEuJDIEBjEmGwxBUj09WrkhkI/QC07gh
	 4ZtIRKqX7yaQSDwmGiSvh+mdXOTCzRAJFuRkk5/OranaUQ4CWvynFXV97RrBcrb30a
	 UAHr6du6zkP0sxCXZyEuUl1XeC6Gut1LOYyHDhvAYP4TPwEiu+bLaTMOLY/ilOuTm/
	 6eHk0xq+/pAfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5172EECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166322945332.20267.1785462390971771092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8722e73b51cf85daed7d4c0d86058c7c749b6cf5169ee0daaa39a70f87671f79
Date: Thu, 15 Sep 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663229453
