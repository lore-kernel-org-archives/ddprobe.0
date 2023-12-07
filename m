Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8B9F1400F
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cbc4LK3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C238C433C8
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701973696;
	bh=g3PGcJ13B0aghDQnHoree2PezaqaJKV4VTkJWGu+C38=;
	h=To:Subject:From:Date:From;
	b=Cbc4LK3TptK/PeK3h3bR13iTSUNl/q9YkPIt/YukRRld5G0ePGSN+gK4p52zZV/9Z
	 Ct8sZCjLyWGzuedYFMoDpSJHQyj0QbHZuI60n4JjHqSmsZ+CFVIdEKEgdTt47kAsEz
	 d8YwoR5OYZJ4px3qBneb9YYPLEB/mhRLymh4XHxj0V8mOVOT8GKGeZc7gr7aOagCH0
	 HcS0OtQKoId38rDB0RqAusZGKchZ9qUPb2rhQNPwe3KsC0f2Fzu2IQmuASuN7Csb/8
	 VBVNRLDbBi+fLR3KjInrXuGrZFYGG9FE/JaAql2Xs/Db533U7LDVJVgqGGIqQgua/w
	 cCF3ATdJz0GWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62257C4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170197369638.16120.13181720470683679245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef954077cd09f68489679f111adae2c4d1d93ad58224cf84114d46a93a7617d
Date: Thu, 07 Dec 2023 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701973696
