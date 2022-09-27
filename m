Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B037E1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68A5BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664271653;
	bh=4E9gOD6qfvkIYqFbJAE2Qnw8jg7mD3J90yCCtCn6tQA=;
	h=To:Subject:From:Date:From;
	b=LAQpPcaGXUTzTaRchoxH0BZFm4U4yM23q9zL7lDXNLhBpdqAMFvTyUaC6aUZTJ8Nq
	 dHP5NGFmbZUQbpCQpS6y7r/0X/ohr39tjZw81Mi8HjyIczvu4IA9r3LoXN3Qw22V9G
	 x6uSdOP4adTqzXJJIxZ8QiFA1uP1lBP1BwkXDLQnJD1MAj2lauLwAOTlMkEPyL8M9g
	 lO/ULZ4DmQUFj5d6nZwUYVuiPhZa5B20ivWvMTLVccFsJomsvF48+zJPki4XZhTl+o
	 ahZyCFzi7RDFiy9s7VRY0m7E8wHB7XPb6vSfSmEfUSu1wvhV+nd7VfiyXWbTcQFGbc
	 pYcIHysqa1oNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51540C6FA86
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166427165332.32717.2802596475196522364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331fbd7f8a80c03fdf01af3fb0279113c560d1d1ed9f54346df22643e81950f8
Date: Tue, 27 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664271653
