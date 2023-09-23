Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594ED818
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 07:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB679C433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 07:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695455708;
	bh=rRSwejvSWFyz7wbm3ibusIErCEzgCnHCcwDvG1c24Hc=;
	h=To:Subject:From:Date:From;
	b=hWzGq6sZR4aCF/2bjbjSixwCJ6TucdqwdvRHAXPUmzdE0taEgB8Ll2BMGomwUlMJ8
	 Vpfi2HBrOkDDHI3uSVn18bUkbprmfT2KXrAcygjN1kK4TY0wcJmEPusV83T7o9uzJ1
	 uVMSYmh2WzCKsbraU74OEn+inNmLTDQoqf27fbO00liKRmziXxa6JB39lYaPm6GQ38
	 mUy4BqiNVX4GI9TN2go9XaA1Cb/Z+4B7RzPpsv0o4MX5kDkVVznX0RCFB8Mqz+sKm7
	 TFVeGQQECC8p2Q7tSE7VHtH0JpkquPT7Jc7POR6nGnhlaNzxRC4+GZZ6OiPrqQ2CNe
	 z63U7ibeGCPXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB61CE7A8C
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 07:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169545570869.24179.5131852222020303536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab9ec9a1a81d2212918f188974fb3468d700153e9f62c4fbf1a7d0c1e7b80a0
Date: Sat, 23 Sep 2023 07:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695455708
