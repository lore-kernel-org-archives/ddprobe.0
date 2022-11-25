Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAFD17E
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72838C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669350054;
	bh=m9w72HNCBWRYhCFQiNzpQy065bfvX35hZg6cdt0RDSA=;
	h=To:Subject:From:Date:From;
	b=c1Ry7E+65Xj0/FLFaGDXINeVGwFpRhMVpN8HLbFcfbzG6E/1b7AtcxoTSQ8UebRx+
	 loJxGblzkkjEVvus2FPrOwx7wETMyim0RQEgyV/Luu1iQTg77FmgFjDHKNJYVz/u/w
	 /uPkKAqPrRaKbz8OuplyJl992YuXVvqcazwr2WV51zYqmvQhmVH6CrHYq6UqXPypO2
	 yZSQc0cz/Vf6YK0TARKvGiAvDsLr0Bq8+6dXubxIRaNVbYIZgWFXimgQ1E8l7/kxsA
	 wUJqpw0Z6qsLIdiDOznhzB8fD3VL9t+2EfkHjnTvzkR3nwXpm0C74JwYTTm6PoBAfJ
	 IXO3LPWrrNz6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56141C433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166935005432.23127.15512568164584923452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9835e0dfcde3f410ffb11b26bdd9c0232935de61136890ddc0698216f6bda3c
Date: Fri, 25 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669350054
