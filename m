Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41844C2DF
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 07:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE648C433C8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 07:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689751868;
	bh=6l8hlNThLBMEyf6aubENK8+IqaBaCDIH1YQZVhz2XUY=;
	h=To:Subject:From:Date:From;
	b=aJeaOYtPhl2lCGxY7Qw1V9JX4VjBk8l6bzsl5XcQnhNxIa05U4138cVRB20lYSl4j
	 wE/i4ykUZhWDc2wJZI2ilSaL5aja1C7b1G+Qdvuy7orPrKXFxvkSDIt1Ts0XDFcKFl
	 6rXEy8i7GgBYJ+S+6aoD2YmqiP6Tfej3vuSDkQ282Rzf/0Te8nZVXn1tzb7ANNTfk2
	 qfEfveBZxPvkIwXBN9+hHmTrM4TO06XaLbw6eYEJMyZjqyBIIBQ7ZKv0VxEkL0BvfC
	 OJ/rSeuiflwn8kwb7wUSwi20rHtdu+NCc9My4NlLAa1EAmdnleKiNjrUozH/b+3HYk
	 xX2lRiCkbK6Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0601EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 07:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168975186870.10262.18192183429745712213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1db2c9384ef77909b7d454abce51030999b40535eadab02038217ac6c96e50
Date: Wed, 19 Jul 2023 07:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689751868
