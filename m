Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2BFF620
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB83C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661910653;
	bh=Ps/f9YiqPr36G4rpQZzHhl4OTSZY2FG3dXrDfMRw5bs=;
	h=To:Subject:From:Date:From;
	b=SHjouvrmTTyRxh3f7CKt+tlGwpo9E52Qargge/rqn9qaRW+Wp/fHBfa6RdAsfB5n8
	 IJeRjQJt9OOAKt1vE1zxnD1218vVrOAuKVuAKcr998DeVytjZ3kdVUpePZ+kna6rOM
	 fePrRe9Ccv9BlABVEdWizr9W7FMtKLpozjKpOZKfs9dj2770IWxaB117cJnIa3AhQ5
	 BD7wuctalaoRKKsI56Ek6drz45GVXKYKSPfK0xhqX7eoK7JrAqg/cm2B7iBbaKkEqQ
	 H5wD63E4K0ADVxGZ+zy/prn1GvMxnM4o0C8/ZzAlN6bfdYP75bAx1pefrxtl5kYI87
	 j9NKp7sI6s63A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F930ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166191065331.1171.2021326210044224870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f678bff50b2def68541252a9e15f464d0bc3399ea0a84ca76a3ae2dcff53bf0
Date: Wed, 31 Aug 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661910653
