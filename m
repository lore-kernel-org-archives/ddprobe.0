Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9A8BA4C
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 19:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E650AC4339B
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 19:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678215605;
	bh=jeeaayXNCNrzFd+Cn+m8h1D77jo/tZcAbsFQAoXGVAQ=;
	h=To:Subject:From:Date:From;
	b=D0pETcd4BBlGJPbCfP/F16XOQFt7NhTzHvABtQtQ5wld1szddtNZ2czzt3H6DuEN5
	 H4irlBlQQb0BtHHO9w6vXfPKCceVHtKZdb47QR4pS5FKkPuR0d7h2KTH+eHxlQWipx
	 ITGdyHuXjqMfst8txM0G26I1+myhdjYjlRliWEybCrVH9eozWYwVKat6l/aZtr/Dwh
	 iY5HxbD/BRNsyvtsFUEdFVCwNfspw+KvRwBeISuxaqt/IT2w49/hxHU/IRQEK/61Ue
	 Wj4GUd3HdUmqoimaNtk3lkNmUFD63KihKyTNM6UONmw/+X7vunxic6hS3NQQ27WiLv
	 k0UijXS9Wpjww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC4F1C678D5
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 19:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167821560582.25478.346951750619287482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7812a47b23515c27392eda39f63c408eba95cc8109d2700c9090c17191aab512
Date: Tue, 07 Mar 2023 19:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678215605
