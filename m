Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308391BDC4
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLEek5u0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8483CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699830496;
	bh=iXQNLWUJwhOgLr1dgazr30mWGjhCQcIZqQj96+EUJ4g=;
	h=To:Subject:From:Date:From;
	b=LLEek5u0E9kSkpeayaCEb+S1D6hic3AavIXPt96SBp8cqeQycVfXknTg2seS1ts2e
	 JdJlyU0vdDnVSqs5uqNfr+BVWM4orCUXOohgrlUBcH7VzCz0rpMLSnop2f4QSjm6uk
	 Lxrn/EguGvY1OB1cByYsTTvXgDssHS7wgAZ9MB0t7k0pak20J7U1I9XqtcI2uM4qQM
	 Z9hq+VMN4daR1kkB7owOKb4oaSP+i0kG3DsrjsGmIZDBTGUaDZAJt4+3plC8htjlY1
	 9dVziBTrzs49S7awcQBLlD8COxv7ZQ4xYuHdlUHybpgF2f1VXSG0IbgA6hI2vY8VEh
	 NsZ0Lk4viPyHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E9BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169983049640.9308.4186957237359119254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ecc0bba779ed3f506a19bf261dc84ad4e103ce9642e412f35b77ea45505be48
Date: Sun, 12 Nov 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699830496
