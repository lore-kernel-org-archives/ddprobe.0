Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A00B8F6E
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 10:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBBBCC433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 10:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683886506;
	bh=VkBmMymDX59Qap/jrEL/lUvjX+x/KwVTxirRpcjMzQg=;
	h=To:Subject:From:Date:From;
	b=Q9I8oFWjOldSz4JFN4lVFNdwPFVmlLxhE6byCzNndi+JPGpQLUaFvQhWVZB6gGLDB
	 qIP8sontB0/Ez8OHXDBdKaOB+Tc5ydCFbvMveVQ2gs2bs0q64z4Cxqy8rHSE9rK3u4
	 qKOw5MLbR3Mnu3iBYEe2aKLNhV0tya1TigKc8Y5JQqoRA6OFczP5wmutUs/Nj+RlK2
	 qzM/3GO2VyPvysjYTLufZ0fVIhNA4zqtBnL5Cvf1H0HytddRf1lqj0JheR1+M4QDtR
	 p+yKx/SagSWmY9sOGzypYv2NtobAkw6dsqgOq3dvUxZ5bj6qAIRtLEvOjT2H2B6g9c
	 TC0a5t+/Ybwdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD14C77B75
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 10:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168388650577.2238.13023053162274602966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12189ed9e750822cff3eb2bac3a0895b73c25a60ea31225a3c886a8764f21fa
Date: Fri, 12 May 2023 10:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683886505
