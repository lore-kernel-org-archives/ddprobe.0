Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47D36102
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70BCFC433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666372853;
	bh=M92DH6nUsjEoGVZV2ZUuVEOfps/kr0Hrev1WXVkIZf0=;
	h=To:Subject:From:Date:From;
	b=BLgt2ufKqxvOSKnA9OwC+Q75Uo9kaFRIqqVDPxmNtFeUHER9f4zp771V0YDTEGMxV
	 GgljhW5N28sToW0aYTHse/cLXB1FOqlwmvH6joOhOQnNTxW+Myk/O/JifB9L5i7ctj
	 +tlUQfihjhZT/PTfp9pSRHjN+S62Vv+4524HDTJb5TJqmcFcXyzz7RdJq4gnrp3Tk1
	 K7BYqPBlffepSrrBJ9N542WdgpUdbXitGuoxVOmpiY+O/8bpga6E/mHGr/peLQF4Wa
	 ZNYCJvbEoRiW9gKwEcTG0xggH86YA7qjZELqWv04b37qxQ64jkOW77YEjbKHB0AfHn
	 P8GAOl3jTEGYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5534EFA373D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166637285334.21971.772536845583412693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6cf638f378c9f7e55a861fc4db81bd0cf4cf1b42fa3c9d9e83c6a8051a8985
Date: Fri, 21 Oct 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666372853
