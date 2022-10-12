Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AD68F5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7602BC433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665561653;
	bh=yVh/Wf+h1Y6haVOvps32rD85F6Hu3OLu99mTDKFrm50=;
	h=To:Subject:From:Date:From;
	b=GtuIMUfguI5RTSOee9ICS7hwZVB+8f/cllbbAR3YfZVXoMwpapiqapam6HqHHL9Eg
	 rC2S+zUfvIEAozy70qVcwYqlFkFf9Q2Abx3nqPMoyk0xINcJ1QGtkkKsQy8PwETXat
	 DGEYNGDTYOLc3fcjiHnmijaUa6P2qikj7Enax6yI3P+1jwOC3IoAFKFDv2UfqdixAt
	 ULoeYFgcCsDYZ589Rb2RmPHS3Al3APiNTuDn3gO1iWzeXKtjEa2uLBnAvF/QnSGp6Y
	 3oN0qvRco57Al8LGQ2d/G8AiLcNHv9Qt7Xq/JN3xJYCw+/S5ckgC5HjHgBOy64q2st
	 VbwcPLDKoKaiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57320C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166556165334.4707.17371714837102189900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b7ea4ca830bb91d94c6819194575e34663b6114ea0a884974e26256a4a9b89
Date: Wed, 12 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665561653
