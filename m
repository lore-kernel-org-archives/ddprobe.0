Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A56117CB
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 11:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDD1AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 11:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682767566;
	bh=TaO3SHJcLgJMuydjsVwFJke7DpAXxJS0Jl8QrBUu/c0=;
	h=To:Subject:From:Date:From;
	b=mis6KbkzOKmW4i+MdkAtFCQsSBmjWbkKqIwxBWNJ8eOtSMLOb75qQ9xewm8ki4C+X
	 mSBVa6Uk3Go78kZguxDYuhVv3LXKXiUVfJBKtYtBkKq9aVFfxbqzZPEryOrhxK6MsL
	 7b+2k752777ZAdC+P7p7zBZD6akmIBSYwVbmgp3QnbDLcL3mhwkd8jMA9Gl7t0WdsA
	 1wpI9ZPZdY0BafUkDf7iK3LYGRidJUqpCsWpin9h41VbIQSieMkwV+jUWkUV5n9pRN
	 00vTa448eL7nViEANYZvZszOX1dNMI0xSOWK0X6BMfjlzCXn5UiSCirJUxtgaZvRMT
	 3ILSKeTvTdtCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C92FAC77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 11:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168276756580.507.2339387852271359189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275c5b32edf698b76ceac098bf847676330660244f6f487df4fe073f2716cf0e
Date: Sat, 29 Apr 2023 11:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682767565
