Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B885D654
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65243C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665042053;
	bh=QMc5i/22uGT++oCD/BzerY4I2FZRMnTKLNExSZqB3eY=;
	h=To:Subject:From:Date:From;
	b=fZT3BIiEa9C1+poHxttoSMVoaJXTki9n0n1AFMBJ2nBaII3KXgcDQT5tEavMgjGfH
	 RqzHv485VyE90I5lMBrcNa18eMb/EobaHTe3WK5CkMZVydfbPOEAVY+/G1N/wATvwk
	 HI4adh+KG/ExjJX7s9YPp51f7BwVEEymRNCdOQ7/4AzZLm6Ce91SqgpFglnOluFKgo
	 YXWin/oyrIoB5Plpu6TZzHXpN+rUpPVIvFLFe5FEhV7LBBh3V1/8cj5V8igCwdKSdD
	 rDUJ/pDkhetP2VfyhYZQmIRAO67bRptuT6PDhZ4dE98LN6eIYRSK6XjGrt0WQ0yr7N
	 2sgP1/nH9XMnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB36C433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166504205331.17318.3980890604204080683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75bd0400b1e13f0a3a9c5b28eae55969e0fdc350ade9c6370e7c596d7e2782d0
Date: Thu, 06 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665042053
