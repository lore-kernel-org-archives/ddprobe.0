Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 791F5EC9
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 04:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1DEFCC433D2
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 04:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683779046;
	bh=4x292r2nBlvL58aEDACLdOxUXYqwCXTDVDi5QOQ87/M=;
	h=To:Subject:From:Date:From;
	b=elXRv60LYoNIb0KT3IAKJDndSJy+Gk/UCgEcPZ01VjxwWHvpDqpaMbjVw+txz7ZkH
	 oVlArWSQ6I0uOk8NDnNBdfUi6xtyKyIYN2JBg9RbDi150K8cklkJtj3UumgAc9Y1JH
	 qcy9jXXPUbnXjbDF6CH+PRG6jxj6bI5LnieDwFWJc5CyAWYZ2+C0OZ1fcRyMFrUM0V
	 KOgEtIefhH8kh4V1+zzQK3H651FJADgq3/K7IO1tas1AIw2baJjZpGN+yzcTJLOfhh
	 Vyrxp6MqNt6EiCThbaPRxolj9oH3NzIZDT3Yjh2O9lFmzyLwiGfLMcU8nbZihDGgzS
	 fQR90LYLJHoeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5B9FC77B7C
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 04:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168377904578.11498.10460653371834586499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3c2661b6e17ad7cb83faf10c5f2a5d69ad6732f03fa7b1a56d37cadb93da4e
Date: Thu, 11 May 2023 04:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683779045
