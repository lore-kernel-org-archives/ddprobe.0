Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432F117F1
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 10:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC28C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 10:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674211925;
	bh=jME4aRQ6DSfXRxMkfFWG2YJzJAu4h6yMVAqOffYH/wk=;
	h=To:Subject:From:Date:From;
	b=EiCLVN1MdnNdE87WSrA4DTbHRwDq14ww+y2RX70zrypYIdAh1aoOh/Yzy+l/BsMQw
	 di2xMOtHBqVQ/B44WPvY8pHKAvZLuvm/5TUQdTrvZ2WBeVrv2nNX7D9xVGt5SEO0Aw
	 eWxPi0kpinmBI7kOfAKWMmd4JZO7BKCcA2JHDUsjRdENrXVKGA94jKk+ytVh/3sHnV
	 yEiB57MzAYrBNlQBAMCCubgGnmGJPO7VdLre6npdxM20lv3uks5alO8mvJkDCHV6n0
	 CZrH/U/G7G+gq+zdPNdq/GbzQ8K4Vw5MHBlujswYocom1KCtmW+JxqMl3zje52c2UR
	 +w0akNuwy7sVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6AEDC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 10:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167421192574.2162.3447780774849757136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7382f8f9f72796d4d7db13cc700e45d2f56f859eda36126781a018eed469092b
Date: Fri, 20 Jan 2023 10:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674211925
