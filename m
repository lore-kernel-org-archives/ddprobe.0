Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2AF346FC3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786783834; cv=none; b=od1Ick71m8j2jvH/K8VIBPnxMuDYLDs7H6Dyh7G9cWwes20lL0UpBRhIzhCjXUT8IOCubB8nXzV3Sfb51F0OkvPxtuXPluhq4VbJw6IdpWMQ6bQcm2poPTodz+0NimaLr5z7QWD/g+ZR8K3N9qxgAXb08ofK2HAADSVubVVrT1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786783834; c=relaxed/simple;
	bh=MMSz+bW9hRq9WNJwEZ/lkjKaWjAXy3NPNRoBpuRBVRY=;
	h=To:Subject:From:Message-Id:Date; b=YkACLlUxeuub/xAtaPwM6jL4EBYEN7p1Ec4J4cW4Jak0CSYpKIMVIBlp1Rn7vr5hPFEEf9uSj7z99bU78x8XfTbJW8xsZnzFXkP3gpAE5wo1ZBJw1jNqZypXmsEYKRiDNkfyUtyOsp8UvTn/r3uT414+LWKRJ+bL6WhS3U4Tfw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Apmrpjq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Apmrpjq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD0CC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786783833;
	bh=MMSz+bW9hRq9WNJwEZ/lkjKaWjAXy3NPNRoBpuRBVRY=;
	h=To:Subject:From:Date:From;
	b=Apmrpjq9FADkXgNerwQKqI1kRjNZE+7bkY3e/8N1bPisI3tScuYyN5I5u1VmT5ic7
	 xOvf4jg3lcYtraLmrkW+dWzXSogZ1WvVLeRRXNf+Sk+4KXGCvBTOB43oodmeFY+LaN
	 ABu9fznnKDFCgg31I5F5FkQ4IJAf25iK1MSJJTdX1+W0g0AuVbyJMbDitzM5AsfgpM
	 +dHBSTsL3TfrypdADO1DBZqcnkX1qbuG95/ZgJze8V+MnIKa7R7owUWLrjlQJFHavB
	 uJ9cjqku/xFAqxj0ZcXfY/vYmeVV6daK3qfg3FKrcyE4lTkpDClK+wF7YbJWOlSjqC
	 UH2vCBwR/J0FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DF3C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678383368.15447.7515590425468264932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66cf903d542cc4ae9756d3e7f38370330287d83850abce7e22e1404de22ce336
Date: Sat, 15 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786783833
