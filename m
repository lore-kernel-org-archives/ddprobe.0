Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A4620F0
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 04:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D897EC433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 04:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678076825;
	bh=/YSe1J3roeC7q6B6G7OfH1RhluCnHmeXHgEw8un06Ls=;
	h=To:Subject:From:Date:From;
	b=cTjbue+Q1u3F7bAik1hX5YZSmw3Z/ElcTllyGPZnF0uC0ipFKAHXvRL5FL//e8ipS
	 BQVBA+vIfpzQ6FTyP56x7lF5x3DvTW/e5ZiziwKHSFvdOp0fc9ydDeboDno9UvKO43
	 j8zLyd1nj+Kd0FGlRLY3g8aaj3yvcxbSig9UGDoI578UzHZrB2nSH9Xl/0MkRB/02s
	 kc/L5puVTRuo4uQ45Ubt72FXnH5qS6ShZeUsJZvzUaq7+GRVYSWW6V9AQttmYwNEFu
	 YK6ACzvxonO8rT4CkY4+rukruv/b2rf3fL917iZkqdAyImt0D6xWE5EJyR4m/5+6b7
	 aW7ml/47IGWLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CE5C61DA4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 04:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167807682574.23314.8405581358162346984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4494ed6fb4ee1e39e5af80715822614e82a4a242ebae656e449e4af85a45126e
Date: Mon, 06 Mar 2023 04:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678076825
