Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDF830EF77
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778001454; cv=none; b=npZMXnuuJ81gK+OcFE9Yc5BNdy5YZFwVwVslvB8lmKDou45lgml3unX1I77xaEUREvPcLfBcWlKo7+jmATgPkLCO1JliBPVNkD2Hv/qbYLJOuR85OWEBviIv1UFR1XnvdOJaeMbS1gNkN4WCaBOenPWTSO1u30jvIvdKfOJNISs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778001454; c=relaxed/simple;
	bh=qahMWFmLqJzxb8KVXisFvrIu69sq14NaJ/r1YNa3Zoc=;
	h=To:Subject:From:Message-Id:Date; b=fcTYDiFBNW84QJMK/HeWXF2GXO+s5+zdN9F24x+bSoPJGuezX/i+jCF78zA07+CggOTl1l4qPLFuRbqBzPbzctpwUbfBwCUoIF2OO0Sx3eWvTGAkJKiHTCLlDr0PjiVgHiQFq3r+9sZF8wKzoVJBbZwTRPtzKn0BtN+nVpwj8kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnTqt57L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnTqt57L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD8FC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778001453;
	bh=qahMWFmLqJzxb8KVXisFvrIu69sq14NaJ/r1YNa3Zoc=;
	h=To:Subject:From:Date:From;
	b=KnTqt57L0LOk95HHzX/7y+AjPc/Mj9im2UfTZCgIpR6eNFKFCFnU2Rer+CRED9JmQ
	 ygFOgmCHpXgcikbQKBl550j/KAKzs6kotMvL3CagEvbqumF78JpfvnAR7tma8xSbcV
	 LJWYq/ecA76Z8DT9Li+KBQE3fu7sZAYWeID1G92kKgyizzM6gnJ5BW/mR681L7C3pL
	 1vnfjxwmq52WG+ZkUE7chjUvEcO/S+e/wqxChFmcw6cETaQnMhY5uyNnjSSyl8DLmW
	 91VAf2spGLguu52X8LEzFrxYqFR+7wlll7OwZwM+KFRbe6OOXyGlcHZgo5A8g/daxH
	 uLcmH7QvVvwTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDE3CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800145369.23016.7758523168426850850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586a4b2583c651b8c606cd4b0b9e0a3f7ceecc4359b3e27569f7634f72f4f0a6
Date: Tue, 05 May 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778001453
