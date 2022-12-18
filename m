Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C02632
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92364C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671327087;
	bh=UCeU2zS50LSn5wAI/JJ/4ltdVaF3aGyJ5U6kbGINbS4=;
	h=To:Subject:From:Date:From;
	b=s35TjWseT+pMkPw6fk8isIzvXtt7Ps7yhOYkwOaZ2ZlevTzbzmhfme84Z/zFxp7J6
	 9uBq77364yNDeptVUCFoT2TNbrK/HrsBgxJgBBXYbvivERYAh0V+vLlz2WJWHQiXnb
	 XwblHgztiw6MgLLAGnkIq2h5pNVrcRYHoYGxDM2eo4e30hhccGH4ZY1Ch2oolqlB/6
	 dwbUbL2FAC8NLGi5JSllr+RUndn6irHO5/le82B3bVdtK1TkFyzyUDw8JmaYvSl4qS
	 3qqRv4igvLWf6P47E/n6nq5OMra1XOz9HG1neTe6wBTGSt8hQRKkyKF1GZG0QmTPiU
	 zkhwQrOVpqJlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74E8DC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167132708743.4796.3939419278526616710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136b6730254fc8e4ce1acf243692823c7ebe25abffe5105241eb94fa92d2e008
Date: Sun, 18 Dec 2022 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671327087
