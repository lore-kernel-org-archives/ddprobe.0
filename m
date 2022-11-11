Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9261B552
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E527C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668210654;
	bh=MO5NOZzHehtCG/KN1gOdBP8pyqOMh6cjLd9YXrwvWWg=;
	h=To:Subject:From:Date:From;
	b=mLhCQemEYtjSQVh7nFDa08Ts4Ps1Q0hy5iJoPjpTzvUfQWevIyRpa0oCkkwX0ic2N
	 vnYgLS7m9Jvn9heLVFAE9vk6HU6VylOdF26Vj6NX9EtHRu88WvszT/8n+aIoNTtZmv
	 mMvZbVNllLTblsrX8+a+n6Itrx4Wtx34aUpNlD0xa9BeJMqcHhzh+CTVtmiTOSfySz
	 tadqGigzcQjPDLBsLGCPP5U01fhkWlh2MWTfVzth3fKtb7p8jIVz5mUjomwP/nOCGQ
	 65d4DSrDEWlVEIgOBKOeZTRqFiVbS3BQxoMrwzvmhtcs5NbUPJfgp3BZlKAykV5qU+
	 R4dmrg+1RzgOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50ABFC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166821065432.23283.4037902091325332629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee84dec615936dc65453ba500472636791dfcbf79ebedce8a6f352d3f7de90e
Date: Fri, 11 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668210654
