Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B672772C
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE0BC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670350854;
	bh=H3cqbMyVHFwk0LvWi60IlzORFCjLIoHA8O4EEnsvwuw=;
	h=To:Subject:From:Date:From;
	b=asi9o9m9VGCxStLrg5uAU44GEMwiKCemDxcGA5En0zzL0zoFED1mHl7E24e7RkGvd
	 jJpCF5qYpDX6Jzs1u+j1dLd4NsjN1GtdnN1jppTa5XSHX9PUS7JMTNDfjoRGMFgivR
	 QNe6dKzk1sEbv3qf0M1Tj6pXLDAEqKpz2Hu8eISMoymZWd7Jppk7QO2x1jP8VCMauv
	 ALKIwPD65SXLMuw1ApszJtjsgXqxmTf0w3ac6LeFx5dG7Giu44uvfZNL1L9cRAd2KH
	 JbHmO05pxz3qkxEM+YmWFu7nmJ0I/8o/4vZaXNv+usJruAv8JK0RNvkQT/bel2XyMl
	 QOTTSlogQlsgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B80C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167035085434.25104.6984266497395225496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14307f24cf6e9b62df6cfcfcbd4b36d1d3f33bf0b79c29f9f398431f959ee676
Date: Tue, 06 Dec 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670350854
