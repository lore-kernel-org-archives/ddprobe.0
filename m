Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BD7B665
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 13:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714917143; cv=none; b=E6/HdagNICAKzELq7ZHJs1YIU9a9JC5fGhhzuxrIUXPITj3ljLpSK1NwJvQAclOaM3qtOS/DBwdPh+M1AesuO8UJAm+F1VjsQsUC0pC+RCa8V4Bm69rL9YBc5mxEJQh5/pkbRsXzxOrTV2OPaAn/5cFpk47Yc5Ex6UjrYyjT3S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714917143; c=relaxed/simple;
	bh=a3yi0SvwwwW5/hJx932qGOrOGcpPuPO28oDEqw8Ljto=;
	h=To:Subject:From:Message-Id:Date; b=b8Dm3lzTGVfhkIEOgfkKtgiCMk9RTRKLeTCawyhzvJ9abvBzdblsNAnyCuMKw2xPpYW0cWpylNp8HR7nVgfeCjGm/YWkDFvp1zz/HBdpQ4sz2KAPx8uZHVgNtOBlQc7Qc84Y8QGDEIGDW2QqCvaL0K8K0xN7ZrhoYJtWTm2nS+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYnX7jTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYnX7jTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD38CC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714917142;
	bh=a3yi0SvwwwW5/hJx932qGOrOGcpPuPO28oDEqw8Ljto=;
	h=To:Subject:From:Date:From;
	b=tYnX7jTMos5CiWXTEOIlZmIfEFlGikv5hh6q3dtCKfrfh8d0VkDjbK8ATHfH/LVTj
	 FwT7qKneKXE/kygcsIzKQdtbeMW3YhfIat8EtjCb+n1sr6gFJOK0oyW+Eclr9CZZnU
	 Lt+acSuhSOfU6iFl6VLCD8TAmrIvqkf6ooJQJMOLafbPzZkERe46mz2S4zkEdEywzc
	 RlSRKgLCO7b3ByMYF54RtUNmq9XkDXIb/K1waBsl/KlUcjln+zPKkVHlDUUUQ5hjGF
	 cL7VmzhjpmDf2Wd8orAMYamKUgujEbJWj3q5DWf0vb8DQu4+aACQyV3SS/F1uRKXMN
	 v7wuGLPeRdkPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8264C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 13:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171491714281.5783.7063513740059705196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5680c95ce89237de0fd604313edd5f4695e966c70aa7cdaefcaa764ab4fdd312
Date: Sun, 05 May 2024 13:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714917142
