Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573F6A53
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 20:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C213DC433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 20:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693080848;
	bh=7SQbVxh316lLWSPOgbXs2mjnpfCtL7yV4OEf1j8T460=;
	h=To:Subject:From:Date:From;
	b=us+JPtO1SDE3Nl66Nb2pH9VMCOvjhzRNL8EBjavnauPNTn61nq0WWxHehrkO7exmF
	 GSIa/qCQsGALE/tcb/gIrN9YrlPstXNgrlX4o0CRR8eQt3BUemhm3qXJFJceYtLzgE
	 1QLv8mgk61KNaSYok7uB1ZxkQUzUbdpBkaj0eE40ngL4VM3cO0GwyU5AAiKdECZPE6
	 gN5c/P4zKmQ9Oxyu3tZgKrU/8MWJYrO93X1YjNm2zD4nY8vWizSWXpPhxJZJs/8r4d
	 F5vSjwrgWgF9o5tySHo0AKv7/4voypbSatS6V6V5pfbgNihsS51ekOMpd5597CMJlM
	 HgkpthagWvj0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6246C83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 20:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169308084867.4732.7106754771574132610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec27be1fa2944c167e673100ad44fede9ec8a610de85584f0193aa6af420ba0
Date: Sat, 26 Aug 2023 20:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693080848
