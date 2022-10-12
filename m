Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E60612F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CFEBC433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665615653;
	bh=QEr2yCw4YZ6hzMmRyDbcOV7UbyKyfWsc8L9VXz20Buk=;
	h=To:Subject:From:Date:From;
	b=kZ6SGu2QeCRjw+VuD3vn0V3zwRp7zdlo/9h9/7MYS8OZSgjLcGvBryk68Xxd1bQNY
	 eQ4lsOeFDRflXPJeFcg7q1VfyHULhhY+FJMS4vROJTV3O71dNvG4F+LFfoeqJJ3rE5
	 H4/ehtRHJL79KQAnXPm0eP1wFQn6whgaWeqATB6jQSTqcoxxcp+TAn5EC1HffyIUoE
	 shTlI2FMaPPHx4Y+n33tG6CTRzUrb+WlI1n/uo72ekmrMG5onuRHZhg2Ik9Mr9Aan6
	 bYQBp7xOpMUltKQUSv1zACYt8ExiBReQUGLMb7NTb/Hx+FwZg3MGN+QNTeWsi2wb8O
	 QmbWlfgTVlzLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E306C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166561565337.12557.8369543560663399651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb403d163552e9e07ebfac7ba996b542660b67d1ccf36a66693299cbfe3374f
Date: Wed, 12 Oct 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665615653
