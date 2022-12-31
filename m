Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31AC2C9C
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7767BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672516887;
	bh=omgA+grW4KipGrKLW1Ua7/mID1i7LXRMr3FxROHoSW4=;
	h=To:Subject:From:Date:From;
	b=oA8/D39X17SVC7gWOO5eAJ3bqrf2/BapzInTyByQrVK1UfCrDMUtPhhmuqXsxeEYP
	 lelJ1y8hLw3QSl6Xlk5EzLHPh4nIA6o+D0Hz7M1xcM2M8J/i5xAScBgtk06Csw27av
	 PnhMNemFE6oJXYCN5sR8AYST1TA/0XPyzVZ1BEDoPGZnUlPTX2/9kzDqywRRAcI3hO
	 w5Wf8LAY0nOJ7u4b3wJCGED6bSOQNggd3UxaBv6ciWt5uRicT++gDF8Csm0l2B1Ouk
	 Ij0TwUCedDg7DC7p1ZilDizthYCfqyUbB7cGSrxfYsTAqzeBB03zThWI4WjBskMJOI
	 6EN0zDUk3CBSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E66AC3DA7D
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167251688738.8262.15572398864824994561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b83600c2bb7afa8f4ba23e5e29002605b19e21287df962764212206e2b26b7c
Date: Sat, 31 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672516887
