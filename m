Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095E51101
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A814CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672375287;
	bh=XJ5vm29TnqjxhAIP/etdQha9joabL8njsjJiQJbdUDs=;
	h=To:Subject:From:Date:From;
	b=PFn3XMONYqkgNNRLrXuuq4QqnhlwY4nnkPdpwsCxD8qdiXLS2DVEYmSjFuyb/wphO
	 1uSkSWcxIgKhkdRrc5WKv/66NHGnZWuprn/2qZlSPJVO7bjnrCEv/RSk9439Zk3HFA
	 dNIs3DwESkXK9CSwZJiRko7Cp+gG9NYlE7b7HqQ7LDlIyvpMphUkfZWy7tVO85LZk5
	 mhQqDBsyLzWIMJVTwc0UrtKbyCUsXQ3vBFxg9G9ZE7AiCYpn6QfibniVfQC8xZ4+C/
	 g13voBuj5QkSuf4qshNAV9E6hUnHzBZ7dSredf2rlA2QbAG3MVe76yEC1Uxvt8kCJc
	 NEo/Vwvw+1igw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86E38C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167237528748.8233.1830528981493833962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52dc057328391be6d3055aa0ef1d8e89a99a76f88f8e36e461bb74602ebb4f0
Date: Fri, 30 Dec 2022 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672375287
