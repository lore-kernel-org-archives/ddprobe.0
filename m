Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580033222
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 18:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBAEFC433D2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 18:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682879166;
	bh=R+iIUDH3O7dhZ3Xco9mab7YxLlZWCxl7DZ3BgaeVZH0=;
	h=To:Subject:From:Date:From;
	b=sALl8wrq/CkQVlIYxzedvMWiOn3kj2e3A2U9Y47d0BtF3V9xJqXvJZxlB0c9KZJys
	 3rLpzNHBvaE0hmdYetYfKGaCXRR6d4XnQXQuwPzDZr3QnwRyCpUv39HEpppgxcu+1N
	 0eDBja+xm5rCnyYHA4SqGU9CRajdKe0AMtF4sUQhGREyweDgFFwU45+hToz2VJYqtN
	 eaSDi3DqHxshKnXXdSTH1pBib4S4N2k/f3G4pZ9jltNjlAXzkgph5FDiHcHlhBco+w
	 v1OPgKOSLxQRJ6ru3UCNeQwS60waXdtJm8ohb3TJC+3xZZQ18bFeMMhBC9Lt5m4X0S
	 fKgCwxg97VO9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8069C77B60
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 18:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168287916579.29756.6157274565784963363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce11a3ef6ee69fe0f0e84bcc935e4febed8c3b680da914e09f7a71916802385c
Date: Sun, 30 Apr 2023 18:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682879165
