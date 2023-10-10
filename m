Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5436128E2
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 11:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApGElyMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAE7C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 11:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696936028;
	bh=HQBxBR2xEIOR7TeKHGxA2MpVKr15sBMIMzakaCn4pZA=;
	h=To:Subject:From:Date:From;
	b=ApGElyMPSMiXuqkNFDRSLy2CyUSuz/1hRydaPjFhPWVpzqMLU7ECyxGitIOnqi5pP
	 OzetLSVK5m9ucHbk5Xbv8Htk4Wu2gn9og45JJNgwQmKT+tccs7SA2tNYC6xrLjJBts
	 P/NzEOU139R6/ALzdUcztu8dmRGEJfEkolBu9Cp0SmoM5twQE0ykrJtW/IkKcYXNe/
	 k/ujVftLP7FxbLls157c/mCxvLgSG/Tqfzhc+3nHCE1MCRsolVv/2MmAdCG1UmhAya
	 /9rm4Hfikx9c2WkwE2fm3LMxcxo117miOLPSgqQ7oakodPZcI9BGAw318Dm5k4DBSr
	 ht8s3mf1jJpUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41A9CD80A7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 11:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169693602872.12020.1164649226089765287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3655ecff4457b5c0e6781acc1eafaf9d24215fc06c87bb04122f2323523fea09
Date: Tue, 10 Oct 2023 11:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696936028
