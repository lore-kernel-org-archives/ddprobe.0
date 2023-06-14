Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF2D17E
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 02:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DD9C433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 02:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686710228;
	bh=5Cii8bEi9Qiqocw/z5FPwStgNEUMiGX5HpL2CD71elg=;
	h=To:Subject:From:Date:From;
	b=bCH740U4EEe62Ci931lAoPHf1xQ6ixgvDWlpdWLLmRSxhDHvM77klCvceM59eyBUi
	 1uLr5dYwwNKAxl7lEeEPeLkVQG5BIYWh3RbQ12cGa+EXv7b3LR3BSQj0kccWbDeRj1
	 BnJDfdT89dhySqCTCWBU3o1axu+69udTmoI1TM8FsapUKIlXglggzvyVh0pUnMiO4w
	 3AljvtL5UPoHpijEhL9XdfN+ELdIqc0hqZk1h1wXN1TNcRkD8efSroiSmAhfjgdl0u
	 9UxIsD1pGq6RGHJFWqZs5CoQNuPFl4ZqprF5ukS9BKkJDqu1U6HqGy4SsaAty+wftd
	 GlYxgP2kRzAIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C56EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 02:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168671022866.4370.15953664556991662677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a428e2194ef7f13aa38cefbaf569e81a4993defe900eab772a57618e0bff0f6b
Date: Wed, 14 Jun 2023 02:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686710228
