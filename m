Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3F61C03
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kotkst64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86BC0C433C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700447296;
	bh=MzxvLd2hKJYkeYV6XGtXzJ4Jg9i1g/YoX7PmsaKAZgA=;
	h=To:Subject:From:Date:From;
	b=kotkst64l0TIyKYkUQN7dA8+keXL2lfERLy0x3IUvDR+qrLM6RjmJWDeqaBfdEa9B
	 O7M6EhHD5iIKSqu5aF6HsBpcNuLvWoJcsJPND8KnNjXDTtaIfZabHbHUtHiaLnhwX7
	 pdYFhGeehJoz+GcwZgiDPf5Pos+GvpYoSOSgGs4xvT2r8ebaUw9UW4JmWy22HDsp32
	 /AJ4mxJoksvH+oMvnkcTTPyiKzs2ViHpargmgm7/8DxDsU7IyVmMYcdNICnbd8SQv+
	 psNysCC6S/oJ1ri0V9oBYoHMr6a9Wkiq8FvCLQuyJt6N0VB29lO6mKqGgKb2vRhdh5
	 chFKIJgbak+Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B5E0C5ACB3
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170044729643.29369.2441464253756381882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c65a5a4dcf22cb86c1d11eee94b39c8b4738946063a229892f4c8870049bb8c
Date: Mon, 20 Nov 2023 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700447296
