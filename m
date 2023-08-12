Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42822110B
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 02:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCD8C433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 02:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691806988;
	bh=b6WWDrdQfmAHcUwlxj9IGiO2uIY7XAKlpBvbTZ/8+3k=;
	h=To:Subject:From:Date:From;
	b=kCNDlTHYi/LPoY5tT+77/Z0AqJloXm6DpzTF1o3CpJzpxP+e7/c3svJ0FF8Y2LQLw
	 P9dHl/DDio62WZ1gZIl+dpCx3ft1n+nicGrf8zdCFxnXXx8ulcOvOWDVDscKAElFRR
	 nf9pMdlXK+R9AlxdQGeX/biAdfDlVWHrd0vPqZCHTAQx2BKbCMVlGRZYVt0pSLGVCp
	 Ou1ZcnKstwM6pnRFEpR1/lbxLi5xhiEPy1rCaR2J4uw8YQ2ThnFoeYlFWmRIOHts7w
	 DQIqvgSRHaUNEQ7r1Q3dJ98/OhPbouUnD75N/6qMzkZynO6864eDUTKY8xZNUJdx1x
	 lxH8KycaGDl3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AAEEB64DD
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 02:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169180698866.25696.13840684340451789526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e09eb067136e02b39e5e695ee7e1fbe421a48912c6332d05ad4d8013b45db0f
Date: Sat, 12 Aug 2023 02:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691806988
