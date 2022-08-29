Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D139F5CA8
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 22:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7537BC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 22:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661811052;
	bh=NkUR+ZjoPV9yppx/3U/EOKP2w7pta/CdkRmgW909t8I=;
	h=To:Subject:From:Date:From;
	b=s8JnXcQXZ95w+52gNci2en0bLepFLTZl0+Vts2Ra/bJqWmyxAsvZgW0LLt5l6AJEx
	 FrUIuzMpUzJQw8zyTuOakiNneNmNI3Z3HFnRB4ha1BuzUq40a7izM8k0+SYZiNMYeI
	 Jp51UO13cEomzCP7plNxy237esxsvpOL9Oi9u3RWojAPs5qlS5RJD6HNQOWwvui3dN
	 I1NZ2WHkTN5aIu3YJ5cOXrlAiLVsmK66WJLkkYhEEnOgcM4BA5+alg58h1e56qVtyt
	 ABpqJuszzZiZt6eKaAwemYWUjqoa5yLQFHkr+5r1XeIeUQGDX6SCm8gS1vVaQ14/j/
	 j96ZUQ3tzK2Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57064ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 22:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166181105234.8161.16804471749705653644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb84089ec241ac09cc1186e8830d8d4c85cb5147d96bb95fa21c6a3ba11c3b8f
Date: Mon, 29 Aug 2022 22:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661811052
