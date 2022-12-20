Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79C61876
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79833C433F0
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671527487;
	bh=MEud5u5eI/eU+j9jJJjSWTodIqEyNAEpHBQR3LfFK5A=;
	h=To:Subject:From:Date:From;
	b=j6N96Fpq0hqqEFgbgucVsMqdqxGono0Eyaotzmcii6Sod/8riaV6vLBUtrRLjAVHW
	 7qp20IIzN01NdJzfKstl+Kyd9MTcsh74awGD6+/eMzY1tg+zGbVS7aR4kxVfomtBaj
	 04t+uHUTNAmdTZGo4kuqF6qkY6Z+LZNn46YcVH6xCmq2x3aRm8nUYvnYnRyRUhRkV6
	 Ea6JQBZD9zeXlQ0TB3eEJTTkWrJfaDt8KMX9Pyl+ifJHWdEhhWXtoYzl1m8omyW9OG
	 M7Ca0fBWxyhTuV0K/HSiAvi3z627mmYuO1q2JPx1Q+ZZHbq/x6zU952+4TX8+zOl/J
	 TOhgJA5wkMhOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D987C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167152748737.24474.7500200093609201273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd59f643bdd48471afd5f106cd0ec324ca2c950d60186c9c5e322c52e11f5ae3
Date: Tue, 20 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671527487
