Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC927E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 739ACC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662421253;
	bh=iASb++NB44OF2WhDKA1WH1S9zYC/Mjb5/hQkwZOypvc=;
	h=To:Subject:From:Date:From;
	b=F3g1P3MzTbZ7/8CzyUNsSAaekfjK1HkEtIvV/i3y87fSRGsDvtwJ62popY7cSMxny
	 84apsPxtgY0XWWhmf8Xu9lurGMSHtWGpc0n6jIHjLKmgmSuiTvakE0sTtxa3mhlJ3v
	 0G/40kMbSEf+0fSuA/dyYFQSM6N9O37DB6P0B9ahgLHs3+tz6mQzbz5yTHmA42l5Lg
	 xYvqJ9QP4pO9pGxKkrhWx5tF+rs2qWiFKyXpfgzbdo9PaB004jslJEvu1kUeFdh3Pf
	 t0yZNnNguPGCgN/5nPaMVoQtJ30v7gY4taqw89ul8vuunp98zJXi07l8dUiAh5Tj6Q
	 lBcWxyqgj49qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A06BECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166242125333.32228.9172987623091444810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6784d86d10ef6d0e6796b1cf47f1e9abe175cdd1fe7ed8f9b62870194f640c0a
Date: Mon, 05 Sep 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662421253
