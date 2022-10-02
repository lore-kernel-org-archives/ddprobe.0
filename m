Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2AC215AC
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74CB8C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664684453;
	bh=2ujp7Nsx+c9HKfqj7FkFpITlM2x4jFVtM9RR5xhwedw=;
	h=To:Subject:From:Date:From;
	b=PCLQFD85IheXz3dq4jjiOJDkhnDJYvJU2iFsV5o9BXYKif5NeiJ8j7c8EK8zPHLzX
	 megeHuPAHinQJbr5Jlz82arpoG5SC3MnFogbx3H5CyyqHBu6d2jiXRlf4Y4PyTQEoG
	 MXB8O3vJ31JoydDFnDSf5iTeU3F/HnFpqKgXGifQheKAPEwqi2uodBPjoNANVAH8ul
	 co93CJC3HjzGqV/8ynuchZ+ez/yNXoRhCvAkkoemODgkje3q6Eeum+hls2u028lPcr
	 /a6NJMBLZ2K58Uovcjqo433wa/kPU9e80KNhesSHMTOTiCE41cZ516SSq+rjpzX3dd
	 6QX5sIGMrofMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58CC2C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166468445333.28164.5294489596746748966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6218b28c13bfa87af382039439b9b7aca89d7fd0a08d7f96118e493b011402c5
Date: Sun, 02 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664684453
