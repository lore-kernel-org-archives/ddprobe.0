Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0F91376
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 01:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A1CC433C9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 01:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687917188;
	bh=Md+vAeAmODFJndqBSvc0HAUqK+g/EZRTSYAtYncNZ68=;
	h=To:Subject:From:Date:From;
	b=CUbuEB4AIgz6dp1MywQVKjhzeEgocpHv6AQO5rlVOq6vhqtEGK3wLzXD9Vghn9/U+
	 0CIXlAs+sn9fIZHolUba7IqAJU5Po3XTM6upqZ9GVqS+DtJ6+euj4yc541lPAKV07C
	 xXP66DwjbR/tE9Xsf82swbK+w1pDnn+OD8GkDaky+qjSUWE9oX2qBInqIKtVCPzTK5
	 889T0vI/UKym/EppphzvlepzmETkoGXC7X/bW8mP+rgLxs8knSsAgZhI8/tTcShB9H
	 VRuPva9qMoJ8beRUsjBXXJ3Je/QLr23G0rcox9vfTC8zwjMM+r0xQRLPsnBk/+/EMJ
	 /GjXzY8Z6qqqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62CCC001B0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 01:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168791718873.13841.16702127857838397032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d231897c90d24fedf168ee0c1300f1502a699d1e6d089496ac43ddf42e700356
Date: Wed, 28 Jun 2023 01:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687917188
