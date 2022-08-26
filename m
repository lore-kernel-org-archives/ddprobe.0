Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16771FB2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A19C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661478052;
	bh=/muBHHX/x/Acx/i4ShBQAx0AaFv6cgEILRWczefqtSw=;
	h=To:Subject:From:Date:From;
	b=tQW8eAV4RcD5F14amRFfCg17JnX7okrh8jmJyF+k19AgugnrH12tyPmHioOKefgli
	 5GtTB9XjwMqT13vqYUNvmeHux2rfTbT3laCqZL9i9f0yPLenybz6J2FIIoPzDwa4qv
	 i2VCL81aF7xyURQNvZoLFvcRXbgy9HdlmlDQlggV2n9sWHrV7tgyTbws2d5Das39U0
	 aeUFjnsE1N1ykspEeFsqFLQque6ok8r8xu43qd9Kz0G56XEua46Lzqkw6i37rZ3SaM
	 IUXrpx1XOw+VnTNSC6C4eNjHu30/QqlZS8O2MMwG1rQA1hs8CM5J/lcEInNbEb5ANV
	 etbWtnU2s1Fdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58749ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166147805234.13582.9760303448990840201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67eb23f1a64dfbd8f81f4e752db6bad545b058c4cfe05ccba3e335fc761ed38
Date: Fri, 26 Aug 2022 01:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661478052
