Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB5720EA
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6948EC433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663298453;
	bh=dolPwSBGLOq/VWM+smklqOhC9EJhNRL0EELovUQHKwY=;
	h=To:Subject:From:Date:From;
	b=YbHirlR7BrlnbCv1nv4yow3HSOnaMY9kapILyQNTJmvR1+O+XP/V0xOygRTdOY42a
	 mSMyCS/2jRInIHlsGFb5POQy5j1ibochuHUQpEk/MyXoHAFqwYJSwLTX6cU+F+8ygA
	 FdvpEMtEyP6ODsDttPBaHlMjMlbIHEUlwV6yBKOyiUPoaccIYwNQhd/3GTzzr0GtHP
	 lI2gu/I1dSrryCCZvobl+H5BN2lLhCIGDxAPmiWG2prOIpFDr7Elam6xUvGa0Hk0pT
	 96nPdzQsxe6O8SEpH7cIQc7grKhgkpfyVlDAjvBdlr4Z0ZaGHnLIoTBh83Eob9OREY
	 5hn/tefc0wdyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E728C32771
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166329845331.27354.14885238284772230289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8667054db8e7c6907317064b5be0079fbef9acfcb30b2a66d56c09e33be4e2
Date: Fri, 16 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663298453
