Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93EAB17F4
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 05:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD885C433D2
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 05:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685942345;
	bh=RDvBS6qbUbKTR0uZ/h5hgBXgB5Lbn2kfCiIRVJqX5Eo=;
	h=To:Subject:From:Date:From;
	b=YyHrwn2ZVkTJEnM350cuFdtFuhcmdXJVvyJ76OIDM1/cuOz5chEx1RGEo+c1xphic
	 YXuEr6kj6vj3rnX3lwRiqoPyZAwG/N+XfIKS9+vcNIiw2hr+GDlAAIcyyPZ8cK4Zpz
	 +j89+iAVA1QB+15xxMk84oJkuSfLMVw8IXXetd109Oq9I8T1cFfY5z9yI18lsmor+r
	 6x0nDdKkZIApK7ONqAqhpQL0CG105vMOTt2gLPy2l14K+N69LVPVKFBVbZXRzG03Za
	 NMWGASG6Dq94asY1nRIJbybbNrVyB1OWZTY4AEhDtk3zTINZkGbbZHiFa0xWKwptnx
	 4AqDvs/vHu3Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE16DC7EE24
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 05:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168594234575.31214.13361666192842570567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca27e1a1f87c007448d4585ad5712cbb593d21a2149727fd610638250acd9827
Date: Mon, 05 Jun 2023 05:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685942345
