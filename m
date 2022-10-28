Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99CD122A7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE6AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666989654;
	bh=W27ldOtqXMNz+PB/A+OhPSndKx4UjNpuuuZf0+t6WRw=;
	h=To:Subject:From:Date:From;
	b=N/6Do0OCSfpXVJtKf5EMg7MMamNc/ft/ailkkD7aSjByv5MH/DrSc8vQ7bT+vomxT
	 BInr7b5Wk3tWfhwB7GsXSkWVVr2iiXI3/kAtj+PVasBscWu0/qMQpyICMKZ0D5q0Ve
	 vvfqHDqUDgttrj3Co6UT0WiC65K7eMV4B+mD4CQlwT4YjmmlPpAPKTXaJl6UXXQmtG
	 kl/WXGGYCd21vMfdsVcXftQz85e7oRR7ECQLBDd6KbdvuYGabG8WYkpNvyQk/WpUdO
	 qHdfLeTJLeEVDsBRAtljU6A6e9yZj04PrrwPDgNwb7woIkPGxe9xUEc9374edMpM3j
	 T0PFmRIuQO2Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A82ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166698965433.3793.5948289664263662593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 732c08af0af9ea2ad40146566c9232581cfb48c31387409fc414a3c6028435b8
Date: Fri, 28 Oct 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666989654
