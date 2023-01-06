Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FC36FB7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EB5C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673017287;
	bh=/FRkuSkhyXAboublOj5UpQIQI6q8wdPxOebKh3OaL7E=;
	h=To:Subject:From:Date:From;
	b=iNUHKW+NGhn36vTeiiamGiEPdtdh8mQJtPzKUjhlBaGuDjNM2FHddynVa4wKwfpd1
	 /OgNfLjIpgDqyr5uhd3TG4YIDtM5lHoO9+09o74aNmjRPF821Hx4HMmX6gOttGEr7K
	 xjrGgiL/bwsTDEXAqf/O9Uwt9M93fVZYkM69rIjCz2NH8JXvnk6RpmECAGNn11xKVe
	 VQ/rQRpy2dHocGY5diwhEhHTJoi23WFMkcHLB1AYYtIbE8sWJI4YKlnNOtDfWeCI+c
	 vUW46G5p/RYDTbPTbJPa6m85yqoKuf2CTkcXxupjFg0v7YBuBw0x6Be5ATLKnr6Nwn
	 o4wkyahJWYmCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A141C4708D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167301728754.24521.7244484427588125742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c601dc5d091eabb2caccbe1f835f6f4184f19c059ac20a33b0c7bbfad920c9
Date: Fri, 06 Jan 2023 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673017287
