Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE56236E
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B4AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671931887;
	bh=JZkGjbMKRfqiqdZuqZ6arHtWuL7Gnn930agYsIIWB5M=;
	h=To:Subject:From:Date:From;
	b=IoeXbs0mkDhhLmsxqu4SmOOrWb1ZGypRBt2RvIGWSGvT9av7jPUMS63o6qNloq1ty
	 QUsjpQcc5pH5TA/dAaXNns4XNYD+elhjBprLS5De7SI4IeEPit7dHbqkQdabYIGN9P
	 TUwmPmhWOj9+sl+heW3AJjaAV3wt1VaEgtQuE8s0UpcnKvcsYRAASJ3J+Bj1SGGP0+
	 pOnvjS4RkTDsXqeBM58TMtOxVLgioBKfFQqx5c76X9x5uqgcms8nJhNkTkiGAuAj76
	 ddw9Rfq5WrVZGoLiJrE9Ypsh/TF2O7QaoV59L+1YkIQ64Fs16kCRpIMmu3azrA7lSO
	 Dl7Qyxx/B2VWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FAEC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193188739.3487.4504314247705619801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e434bcb80ad98add3db1a6723ffeb928ddcf5e3de881aeb75628c7408c7d7f57
Date: Sun, 25 Dec 2022 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671931887
