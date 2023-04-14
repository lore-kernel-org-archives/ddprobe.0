Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5634C6ADC
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 21:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 016DFC433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 21:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681507386;
	bh=RLUbppr0AFpSiop0IZ1fnSh3f9Eti9ijLUEublGATXI=;
	h=To:Subject:From:Date:From;
	b=NKP5AaQc7llm6OyZ8KujSLiDUJXURrx2toXyX2Cho/C/ma1EGVLkcw7xoXnJatoR8
	 FCB6vk/ODpsXbOzhnYCmvuDtq3JB++nGfWuF2Bezmp0jCAu7aYIzNKbuRXGvcoQVMF
	 OTvqIDk8jZ3qdTVEs6lWRn35k3/Do1ZCMYU0S7cm4NmfbHmf3ySwejIozHM+mLtu7f
	 G4CPOKykIl3DjVmDEpM7EZGsEssg3wLeGhHeV/7qyTkeyxbuKbL/ueKZY0OYp/yJMX
	 /M+78duJPsuFsvdYtKDQ7SSygCszUR6cCf5oziU5XYy9TlBKHF8SvA9HE6SL9UVlbs
	 CaFY36gvpNuBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5F0AC77B71
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 21:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168150738586.31027.8765682054455242707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1450928ba0768a9a6534d2342da6a338117f66d4244fa09257aaa704db9327e
Date: Fri, 14 Apr 2023 21:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681507385
