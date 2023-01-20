Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166CF7474
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 21:22:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85F7C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 21:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674249725;
	bh=ncGKY4hLPE35v61waqcssW3QAJU6j/k/Kb4tcsocELQ=;
	h=To:Subject:From:Date:From;
	b=D9+V9a1dx9fUJk6jYwfh+X+tH7WRVpqih6m8HUvlzVJGrN0b3+1GoCRsx22MyVDP+
	 e7nVIK0y943hWLUE4sskHDCgzyi3Gqrl9w4BqBQsSTSlpv+V8iCLbjfQ1aL2FRXg9k
	 DhsMYT1E8+FpFxql2U3OXQKrQf33QWhNpQSdNCuXR7fkg018FKiXgmdwzlna+zpYlN
	 LZuvbDBj1FxrEcjaSaEdIce8FC8nuw9fo5XhXV++WfXrHRZNxsDyecWJ7FOZs+ABv9
	 ZE7D0v+SdkTXVutnF1IgR0AqOMo62xU05q2O6JqyeSN7MMDe5zU1mkiSCmczOP+Qos
	 2N+oiHkmsgYhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B128EC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 21:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167424972571.25811.8312746624457278262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65131b780086b0d3253ca5e83b3eece4895b77c0f212a8040f9c87628cf9668
Date: Fri, 20 Jan 2023 21:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674249725
