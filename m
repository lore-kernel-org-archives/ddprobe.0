Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAABA7A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 01:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645837584;
	h=To:Subject:From:Message-Id:Date;
	bh=dKBAzbpfjoJLaFopg1geWo0eLiILRpNYI6QGVr/ubvI=;
	b=h4XGLe7bglN+ZNv0RNCwPcoufNsp5UkXj5/N/Y3CUYs799gtSbcZMewQG3zYRRbq
	c1el3e1RMsATaL40x7IS2dPpsg8HijJldBQfiWHhCBaNU3GL3xy6DceG8DJP/eT9ah+
	eKt6Xz7QXcwRoX4PbTN6ygOio75xYIUescg6IVpQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645837584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dKBAzbpfjoJLaFopg1geWo0eLiILRpNYI6QGVr/ubvI=;
	b=iWjSSOACrUfaKH6WlUj4Rl+1TlAxVh6+QUBXX0PNeMvMLUnXfm4VL3AOQwYZij/F
	pOiJw5bxTHWelUTvlt2X4Fzh4m7mU/X7qBX/5VbJDE17yvKXQfPis4dudW7nlpgfirP
	HG7bjscCXveaGKwW0WOCsm2bwQyTcFSxZDxK33Do=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33908994-84f08f04-19d7-48d2-85bc-254147dd1a1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26d7b09561fadb54f7ee91919fec7c0443afdae4bfc7eaf3ce653a1b3cf03ee4
Date: Sat, 26 Feb 2022 01:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645837584
