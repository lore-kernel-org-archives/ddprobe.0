Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59151370
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BE8FC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671959487;
	bh=xYz9X4H1X2Xk2QNO7i1iGqels11f0R4SXgGy8KwGvo4=;
	h=To:Subject:From:Date:From;
	b=VbPDVAzyPD6aiSgvpOOo4PBAWlyef3sg6PMMAjwh0IbfXwwnkRMmgJkQKQiXLjAel
	 9qkS76TGLGLSnE0YiEka5NpB2bpSpGS+21zmDBf3SceyLibL0iSXjQstqyBAYRkJGm
	 cpOxvLCRi/0+jt/uD+Gc4oRqGkQ5KFz7YBl9JVJGGWWR3pkjUULUTAg0jbVpx4hETv
	 cYVvqAtpxPzQIgTiJyfNOzc3y68HjwCf6xZHrZAKhj8MOEZxM4JU15s0aFkFGhZ7OI
	 Ub8S1mfQwa2H7u3bEx9/AavkmFK84xEgxbcIPfEdO+MWSwB5XI+JIv2TK9YgOojFZq
	 it2kWwj0EmPwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DCDCC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167195948739.12925.915289475001911343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c7a2715d2aeae6ade6050e411497d67bfdbd2c250ab44f7a706595a0518cea
Date: Sun, 25 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671959487
