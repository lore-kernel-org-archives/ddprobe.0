Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22E67B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98C6EC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672009287;
	bh=m91wI4PYgke4PB1AwfLlut5rCNs3gcENcYCT/Hx7hP4=;
	h=To:Subject:From:Date:From;
	b=oKzeECJ/yelCQ+T8ZDoOKkGvG+0fj7hxy5kY8D7XZemALoGrdhYz+x6d/SV1Zxu4q
	 Zev1btBj2DwmwXvg+WukLQBDrBCLrUDgHsTb3g3ATVDdB8QoH21OnBrYx6nf8zKWZU
	 Mfzmp0cB0R5Q6GhbA2jFKUgducVF8U4PYhi+3tfZVMy57fhQrf7acisr+YW3r8Qqpk
	 I4h3pcm01eOuzwWOZZvnNInpjc7qQag3wzG7N1qncc+4LrWpIxe2nMnq4k+O5n6piF
	 81sogMhJ7mz1gO1CFrbMr8yVoSU+BbI2YwhSy0Sa2wukMRhAltQExwljDPoBx2sBw1
	 ioebp2cubEYqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D916C4167B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167200928747.25668.10906872310068978213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb1e6a3047e99a1c9768200a04588407367c17349ccbb22978eb244fa429dde4
Date: Sun, 25 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672009287
