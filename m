Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE77A36E
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C51C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668056454;
	bh=dWGG+oAF4NF3db5cMpao+E8/yYGiCDHT9kw8P+U5c/c=;
	h=To:Subject:From:Date:From;
	b=dGv6tF3jTi12/9vsMOujMJUDisjYfNgIteS1qnI9y4kIC9fHbXuLGBL2FW27MzfST
	 N+eFDSCjkx8rLh/S5sbGhm7eswfEAthRIAJ1zNJD5CKUPMhqW6A2i1jbuedVP3fe7d
	 p2s9MtlTT4aF9W3ogEJM+mS25V0jGgxzx2YN8ZLMgbG3dosKEJN/qhzLztH4f9SmvB
	 4iarC/RN/CO9PB+OLJR+Jy2BQrb+ry4T9DI/Y7Det8NswcjZmIi47Q0elSrZc9GUL5
	 w8ws5b8dYVT+WWYvu4CHtSuBf39GmvyJxZxnHdUDHR92SBMLz99+pvnxBflMW71bIW
	 tKDzA3B2tTYew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58068C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166805645435.32557.14329143725109341338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebfbce6e32f42a9d93390a41ee2ac9f1c51989cd059dd5fdc124bdc337ef63c
Date: Thu, 10 Nov 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668056454
