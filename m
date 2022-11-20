Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA626657
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767C9C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668961854;
	bh=vNPlje15ISyRcQzpvs/c1BeJk9bXx/+BHBxWbslR6kI=;
	h=To:Subject:From:Date:From;
	b=XRIBxF4lOh2brwuLSyjdP1Ba42tPy3yPwB+rTPDfsTvDYewzddRIUX6azWJHUHFbN
	 e0q1bmui7TlFim9T4gmHNokFlWPYeNIFmYNU8mCDuqalkNxai39zlh9k3c4pZPysTQ
	 B2PlnYe0YBV9nKpGyfhBmGf/ZhD3aF50lrJMZFrKUU3ikY2N+YjvtvbnER7a0tUfEN
	 DXi2EZkKKE548MeUp9+d56wMGVb3geuEO+CQBP+jgmhcUPKlJ4YaEQHtF0Q/TwJpSv
	 3ynLpBE2xOvgaFq9gmAQKUobOaXGwLwhKJxalwUoBfl4jG1fTF+wLtoamokCkfAbut
	 +ZIzDQ4cYEzUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D19C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166896185432.30661.10375825888137794900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0559e2b107e733c899961c46bd6d0525fe54370d993a82ae4b495b137946895
Date: Sun, 20 Nov 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668961854
