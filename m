Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF64B1FCC
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 03:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6574CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 03:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661482852;
	bh=YQPS78T2HB1YZrbwvQNIuqjXxw3MEaKrj4mswUxYxNM=;
	h=To:Subject:From:Date:From;
	b=e2fn7w8fC30oRXj5ny96LwYqTMVqvGNM2TRtjBihw0F0GXKKL2dwzr9+PSG5AwfC8
	 WxNapPdy4bVEjBvXBntG/vEGqnZ/E5ZJXRPuLbgDMJ6Zo0fCy1FDJuJi+fwhcCR8In
	 xagNF+mzpUJl/41YxIlFx9mwqzHwKTB+lm/oWhyOiKLpvqk62c5wmvSHdWw3Nx9Jio
	 Nrm4UXv8bWm0uOk+PE2SrVQavcYfKBMmHE70kPVa6HDlpQJcVoEgkq/ckrgxTZnH9j
	 fK8G18I5CO3XFrnplpbGLOUfTcGUwVVHKtPVDpy/btmBf5QNo1WukJNTYAGMwYnaqe
	 XklmvylIIS63A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD25ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 03:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166148285232.30305.14089446107982205112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af59a836e20ad7c2237a6deabce1f857f0d37488b367f89f0f90f2454e4251d
Date: Fri, 26 Aug 2022 03:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661482852
