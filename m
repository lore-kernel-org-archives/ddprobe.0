Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F8215D5
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83C41C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671705087;
	bh=NXG2bJBtLqvDsos1OS5t5yJAZS7lry/lm4ZZDVVSt8s=;
	h=To:Subject:From:Date:From;
	b=Hne5UiKHxhejy3e0xfeJKyRZqNl5mdPi9ZFKbjuasl7Vfb+TArDUKgawdVZYTdOjW
	 KYOcW3uJJAKj9bRis5PgG+Lq6Hum4AMdwsufcwE9hJgPZk4C/o5VwSosX11ECfK39r
	 Xujiihzi7HAsfYtAiMKL8G00a7DhFGylqE/RiDLFlreeht8epBFUCvk1Kr/az/j9va
	 zhWlTWoXwUU7QKCqAogXsjXEZIiWrsZ7XlNXO8QzLobWBSfxhe9clEXqRi3Xk39aps
	 1li+U0+89BO+qUXPJDsxjJ40CaU8N6drGZLUUwt/wBSA4ky/4jRFyL0ovT7Z0Eplyo
	 L7msZgQt2bskA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A889C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167170508742.10084.8073734495379841504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92725195d33bb7ba2467997216d823daec1caf8c9f00180d54f4c86b00be109e
Date: Thu, 22 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671705087
