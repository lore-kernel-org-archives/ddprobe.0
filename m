Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86C97E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E357C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671534087;
	bh=CsRgCVcZYWy5j/csStmL6rS6CIa34RtkbX45NFfo5hc=;
	h=To:Subject:From:Date:From;
	b=fRfDY3XxTvaeOeJP5JkBMQDkduTH41Qhzn1HEB/WTjilkG3qqnVp2JlHEzaiWVQFL
	 GMz83oZ1V7iuE6gbg/q6do8KYS841jMyqxxOGbwyXiE7yEg8lSj0yzF+JTubnqbgwh
	 5dAtQELVRPS46hSC/uVt+QS7x7IJD71M2IHI+SVdcSycBu1MeqJdJO/CNuyFlRBjW/
	 WWimW1sHhBVpoeEtECq1a372nUXdqhfCiNzNTTZMC/JAfl4HNNY+bzL+rC9LFeB5sJ
	 bCwtro9JuBmiIAIukOge6F2c78URxiQlUMGh8oqh0WIZ1djHsDzk5Nc+ynuKYFfkF0
	 PLiBrKiKBY3NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62142C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167153408739.24695.14836823325528754624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cabcff48ef3e5d21928a688ece019655bb9f67ab2cd5d4c0f1490cb16227bd0f
Date: Tue, 20 Dec 2022 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671534087
