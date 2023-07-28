Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658CB23AE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 05:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C441BC433C9
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 05:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690520528;
	bh=ORZkD0eJ/9aqhlXGlatSC1eBVcJ9m9htIeLzujCqYzU=;
	h=To:Subject:From:Date:From;
	b=sP6AcIKW2fIWvnjz1iWk0TTMH3du2hJInHsD901vCBbFFu2wu22fu27oVGSCPqWc6
	 CDQ4FY63ESMZhmpyekxVSu1IJfmfXzkPWoug8SNgvByS/I/oKm3yXCrq0xX1EFtyLw
	 oCKk3c3B7alZeHo8D2Jb4NPIVhc9BYN4p7uYvcP2P6Ykt/2uxN5Yity4wFKSNgn9o+
	 MmLgpIkbrEtl1FipC9sl2rbvOYSIL0s6CgF1/O0HfSk1xS3WroHB7+cxpAhlAXYN+e
	 EN3OfnG4MAu9MoMERC0YnCywbTZb5bBybww2nXop02pbB7OaDm7oQBSlnNXeG9A0Fh
	 O27cuzWKGP2UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74DAC0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 05:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169052052867.3580.5653476578067581297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8003b873a0cc8da876550fd3af063d3e83be9f378849c862c9761f8b0c69ff2
Date: Fri, 28 Jul 2023 05:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690520528
