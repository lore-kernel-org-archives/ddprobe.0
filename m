Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4BD1C01
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B136C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665932453;
	bh=+Cwr8pS11gbnuwy3YGjQX3MBBsN9KrqcM19IFQWya9Y=;
	h=To:Subject:From:Date:From;
	b=HjfD6/cc+8hWkKkZXiUfdthd5KakqfwjylmT5IXWIsa+c29PMYviiKBX15Fd5Dbps
	 mIa+DwRq2jnCSvFpmqwoXFJs86OmztTXnTnlHZA3RpXL8ypGqvGLT4u/hK5nqbLj2E
	 zCt5qBSS7hsJnxuMYi3eJgcc6491QCqT/G0uDcsJjZ3jHkvpa68YdXQuda9SFp/BbD
	 nmOB9dKTndelX6sPHZ89tlZpGKutHQPDu/MLlcEc1BqlQ87PosVRvzbiYGgbrqIZ9Y
	 2hMeMs1nJUvzOs1dA3nnwy85VaHAHYloqUEmeKJu7DgYNGNWgBdvf6S+su2JRzN3yl
	 Xppy5bOYzvY7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52551C43217
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166593245333.23319.4366875951438621790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ce7e172654b1ad9c7b0fba673294d202ea77517f8a24f2ab7f84e092c63d36
Date: Sun, 16 Oct 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665932453
