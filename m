Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2467473
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7158EC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669916454;
	bh=S+SwxzOjC20U/kq8xowYbUUordyGB+lGlxsRbWRGleI=;
	h=To:Subject:From:Date:From;
	b=cjHxcz5n3w6ilCKEnFUt9CsR9oT17f+Wjv4fmYmy4bpz+dEa6Pt/VnzUhzeQXQhlk
	 xpISZsotYyq9uf3b7p5DCOtXlNf7dV55woMAv/+jXL8moqkdUalTSnAcapD9lAzcHV
	 eStznYGhx3e6R4P4rz9EapE6+84+XdXHtcaOJab1OLvhh7SK9LOKD8cB1dmov3ZukU
	 DycnkA0lOWmUlh1OP0refebl9nVuoVBZ7sEWEoYSXhW8MzmuOOYrPdIHWhZ6jVGQxB
	 DMNv5FC5x8cTKdr3bDSq4FamWt0wI5YQ2e2ZtjmnNwcq4GLcYeq+Jlsjz/Lf+eTYkP
	 3qMmvh5jCz8cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5580DC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166991645434.6249.8874940825357746227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5acc5898e0aef31482dded45fcf6ee5069b449454899594171bee52758d7ef8d
Date: Thu, 01 Dec 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669916454
