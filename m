Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68D07489
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 855EDC433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671736887;
	bh=fn/V5RiiBoCSvZDMD43CsoZbqWqsTvB2n2JGh6MjPJg=;
	h=To:Subject:From:Date:From;
	b=dthuoYoQ9a43PRN1dhEI4TZmv9mA8t5Gk59iUEjGfK+8Ih4/X/zh+eEfgh+5CYaLO
	 JYr1HyyTYPGnaZUpdUJVHzuqmotHlpbMoIq4HqeQP1BF7Rk3aDRpzygEsmtYzepay7
	 +li9OAV3qG+APSdmepkmbFcjTMKrimX0S4OPhj+QitjX3GKEIJW6aVLp3NhB0uocbc
	 3b46QcvsSg02Y6VcK/mcw+VgULCN0srnq9q3xMvfR5XuHCEP4QIfiPyu0MVi+Wf7Bo
	 8qhNqYvRtwKIKC0WFEnekWbNk8k8sXdr2HoYeog7dJtN3eDvXAmq27j0ijhBMF3cLx
	 3QJK65fyb2P3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CCD7C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167173688743.25596.6421380153808608365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77af47c9175c95e5b5e8c570d55eba333c01f7fd03c6d09a79c9f333aa7ada2a
Date: Thu, 22 Dec 2022 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671736887
