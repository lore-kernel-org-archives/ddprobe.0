Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5C515D1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 01:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7C1CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 01:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674954185;
	bh=OjaTekwYmmewoy29S0VotITOyDRA5Xg73G/G+n1bYUM=;
	h=To:Subject:From:Date:From;
	b=jR0QIaGtCfOXtMj/7+Sk3EUnr6HRLhbvRg6qzduMhohpwKsYcif51Fys4o1YFJrxQ
	 niT+HGZKESnI1zHCc6i9eEIG0J8SnqFKD8FWyTf1k7vM5BWcE6cgVAfQW9bX5zu4sf
	 FPUoS7NZWb/LSXAwngsEyyHipGAgyyDOZUSX9Y2sKCjGshvuxOmy+ttSlNm4izLoyA
	 yHCYFkbsFoTLMfajazud/kQgDGl7az2Xs174FKfG3uApI7RQy3VhoK46ipnj3cB/3U
	 SlDpBruXbfMJx+8FnknP0hCAOaCfh/t/IYplCtG/VfHNecWN0nD8sv0eYE6RW+mEvj
	 qC0wxagC3T1rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8CA5C61D97
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 01:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167495418580.5731.13245746637399365191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f153f6585acc358e64a4f4ed36ed2c64909a47dfbbe332578362e1e435b824
Date: Sun, 29 Jan 2023 01:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674954185
