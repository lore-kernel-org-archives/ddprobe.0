Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DE079F0
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 17:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D353EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 17:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685380325;
	bh=BRLE/oXKP9fN7O/4JHiR8HSuaKRKggOmKUB2CXwXzt8=;
	h=To:Subject:From:Date:From;
	b=hjst5Cnw6LlT5VSZiB3CstJfsvAVy7rDR7Hd5zhVEeTQ6F3qN652yKkPqGSXgs4vp
	 1Z7aDgC7UiDj2E8ViA1ZX9BGH+oJleEYcdfkvtc1nu7vzh9wvAZnQ3hMiklLlDxMQ6
	 lbUiP+0pbfW2G+h8yes4/Ktx9zagvvX8l8lUkbPyh+i8Bop5ccMODlIIgL6zdXgpFi
	 Ip/WMSaqoBN6nKOzhkjnvann2udsNc35WUV4oCtdasxJKBd33+u+b8b6A/MagKmF2p
	 d+QaLMoyH/Rr4mzydHHheiizykB+ikAm3NfYpoCQkOCTAI3GzsHE7cPSVRpqcCbSxZ
	 hCAZfm48TBRiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB65AC77B7E
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 17:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168538032575.22889.5525516659161340930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6574b87ac6ed03b7f233a1ca94e9fccb416b758adb131e931c378da7be69daec
Date: Mon, 29 May 2023 17:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685380325
