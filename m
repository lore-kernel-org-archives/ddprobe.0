Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58456101EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 08:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB415C433C9
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 08:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690531328;
	bh=0m4bLat7NUCBV4y1/msZr+VY9saBumYaLwhij8ikvrk=;
	h=To:Subject:From:Date:From;
	b=aLr2kzV5LhrQn7HqIX9384nFAu1L148KfytdGClAAlU4e3mMkTyxV3VU0Y9KMg9Wz
	 8HpnelNR8RyV3iHcxmYG6MnmS1DIvqUbqVKoNxB6ths2Gx8OVO4h313ekTJXbFxDWH
	 F/oLwyBalmuGTnOgHZMUuSKhFcBCwkS7awOSQ+Bka34hNNBhau6+aAMqQOM76gSO+u
	 jsoZXys8apJMV3EdM5COTnzDI1cD4DsOPCw4DB5ej3CKucQKI7bNK2dMFls+tTQOOJ
	 2x/eXLZHaA/9gb9gC4ekG4lG9ORlqupD7ce5/79/QMbllNmz5RNM7N44aPRJpFwATi
	 lE/fuUCfMKkWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDA1C001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 08:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169053132869.12219.17840186082327922124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1820c0e76bc5087f5ea83f9257c82f751845753a475a27e5fafc1516cc5692
Date: Fri, 28 Jul 2023 08:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690531328
