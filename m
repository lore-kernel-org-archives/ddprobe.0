Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5930A929
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C81CC433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673382687;
	bh=/VntKFsqd6RTSpsIrZ9ZSVyyybdvpY8evhF4ZwgmVas=;
	h=To:Subject:From:Date:From;
	b=F1Sisqe5Zvj2zok/rEZtWUZAsyg4BVDe/pHhe8nlkODlzJAiftfJvuK6lPY9smURZ
	 F6MjdaSknefMjUWhyMtFbo5/Ls/xs9XbuiKJKCAN6FsFAz+eDMeUMgONKql9yGcJvY
	 50yQUdGcOcZhHb2EkmEFhPtlbzWQVzad/7lflV6KxFKA+yDVnzfAYPOB59YMf2HfUY
	 500fI9Sc4BflhWvEuZV1TaGt8PLGijPfB73rnVZkkplpom9ccR8utsxV73uGenNdow
	 OZ91YiiafC3BIeZiu5I4ui5sOkoAatWVCyGt1PQs7+Zn0IKUbeJRr5wgfkQ70ukQ5D
	 WuHR/r27suUMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 637E6C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167338268739.16297.8359346498889438376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0a9fc5b0ebec830de2bee3a2aac652056e9223f226bdea26594e4a3fc4d24c
Date: Tue, 10 Jan 2023 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673382687
