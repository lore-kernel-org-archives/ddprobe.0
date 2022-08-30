Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F567C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2E5C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661856053;
	bh=gLVuDvwKW2bc02kbLaHXKL3aPnJF64oaYNRoPtjOKyo=;
	h=To:Subject:From:Date:From;
	b=EKMP+QwgPbL3TE5Dz2UIO7PPoETt9kHkIQCE1yhZnXBLeEeTAYub9t8iUd+oByArF
	 +2uy7jg5npSv6BuWHBS/pEirxmsygCj6BPRuOz750WbPEJ3kltY5bDtjZ1WkeC680q
	 V9y6uLzva0mIVo9hBo+cupguRXHDnuPx1OWpZznX4f1jwrP2NBqDEIUF/llteTGzmu
	 cttA4G7UmRNd3wKdWqgTK1QOCAYZXYo6MeylI+NtCHJm+kJlHpnotWqqq70Hp5uLY/
	 fM+DFIcSbGPgv9Dce03uMNEEpKqqEMffSuqIntHVJ9slgtYnvc31Yfl1ZwzOTqmVE0
	 V1R5VgVnqYwmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F758ECAAD4
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166185605338.11186.7062727631642586633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c7e03d69a1f9a1d9eecb0ef7b9334ae63c130627a1c43090ab392b3114137b9
Date: Tue, 30 Aug 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661856053
