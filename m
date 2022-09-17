Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A94365
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E96C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663393853;
	bh=rMPQnwiZuLrLjm9V7JDR2HoclfjCAVX9Iz0ZzxprR6s=;
	h=To:Subject:From:Date:From;
	b=W2sdXNQaYFJ0CLMFFYypTO8+DGmRtMaD5nCNEFR05vYIV2JFRVVFpqmutBEdsdm27
	 wKcGkzB5P6fWt5mkuJVqusHb3n+lA22Y0Uf4dBzmvSXWPPwbC6cOtMON8F8FHGA1ld
	 ppkSSZeHP3HoPRtF4gS1/kW60r/S3MhRkdJul/rgHG1NZ1UQw1lWhZvi/C8fL5CW7u
	 RBLIRSg5iJcEVXH6BCFzKVznr8UBDcDQBJEpBULzjjkiLpk4zlWStn1zvFnl5+nvul
	 6Acv+Xy2B3OtO9QPopLUXMH/zKfsKv7rjM4aZyMfZO1he2nlFfM6EkycllGTYWABHu
	 UDmrnIyrUgyUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 504ADC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166339385332.17701.1790324565310975779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24fcaf9181f35f74f3b865c87cbd05f718ff6dd70f0bc31b10dac0d6a94c95fe
Date: Sat, 17 Sep 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663393853
