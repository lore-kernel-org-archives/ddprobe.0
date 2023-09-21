Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56446944C
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 09:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF4CC32780
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 09:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695288908;
	bh=sAgDDQ25daZuGsVXUfy75VM72w3hR+zgEuENsIBK/Go=;
	h=To:Subject:From:Date:From;
	b=Qm3c6PLQ2gvR64OusrTtceqGQjhNGTMH5qcv5JvRDBkCQw0S9Lp1CIK26Spp10kEC
	 qA/LJmDsLnLRrebz6REf6Yu1k9Cdef7KwyqlRhF6Z7SYSakA+UZLlGFF6KQ7qDgFLi
	 FpAIIpjGVRybqqA+MK1Be4UIENJiaTZnnikl9ev6D1cme7NLXTb9c/dQZcOWKsuyzc
	 WKwFpbCEq2tn53NLj2l9epQgnChmIdM9ztI6kJpEjxA19VBQJ/JgXqibgWPv3yE0V1
	 TjX6iRr7ztJwnBUACqTkw8UzQ5KbyFUSYm2bw2SlWTeKg6PPgpN2+xeNhd/hG0R6fb
	 d/OxcDRxA4NbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BA6E706FB
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 09:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169528890871.12149.1626508140223846340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325db7be0db312e1549d8f4879a8fc9fa154abd5741f7f4b0b13e6580e0f3034
Date: Thu, 21 Sep 2023 09:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695288908
