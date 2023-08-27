Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B2FB111D
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 18:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA310C433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 18:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693161848;
	bh=HV28XB1cFQgdzw1mFOoqDYRoxqWOVruw8TRIWUtG/3Q=;
	h=To:Subject:From:Date:From;
	b=UzrGxPsGnM4T6I74SSD2WzmzBrWNpgFtiml9FhYdLg0fl+8oc1b03z+xk7n4a/57j
	 Wum6Sw0+xIqNkk/Z1rJf9djWsA/VluRroaFOPh7s+x70DeLZp/SDYduIcM/QCWjM5T
	 1BB/++nnMI9bzAIXUkyzJHzyoodqt/k4E8fzvuXBKVEnTq4DJyAi/gyVOaZGgI7mp7
	 iAoJP2sNxncs7Gifcm9WMMPqchHoszdHjkWN8o7VhaiKRou8lvJRitLCg0X/dy8faz
	 1MZuXe3Ysd4eThmg4QlcpP+P9sNpSyu7F67T2AxEgo1RmNI+IN6xfhgzbgaR82Je8c
	 aLpgr7rJcrmtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB0DC83F01
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 18:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169316184866.18124.6356050754818030307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a655e787304f4e66cfc77e0522c887877ef88b40efa9487576834a813b9e36
Date: Sun, 27 Aug 2023 18:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693161848
