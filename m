Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87981C13
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D2D3C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668411654;
	bh=3i6O7QKcK8TWnwINWXrZwUmU+k5WJciY2fuvaWaLIZM=;
	h=To:Subject:From:Date:From;
	b=h1C+XHmEsUZPwLpsKpm6KWl+dw39ykN6kTfOEawrrfIh7zdXeGuwI1mH/HFHKL590
	 3yvIjp1o/LbXShgjRRuazD409PfX795zGkQUjbmYvfeY/3K8gVw/fcUNkKMlpRapjh
	 D6RRFaTem38ajf1XwY125jTrWvKd1XLme32C++yhLToj6F+Nl25TC9fNll0yRvTJcG
	 Z62Cm3YhDlwZ6D0HheXMBKrCIxm9BmTd+AUNFCt+iZul0V2wxOXzXYcMhsybu8LMAh
	 yOAAyVzlRdQlpdPoXbt5iDJXeTZUHKBJyZ4oBYU/fw7L4VtoNsygdQXPcw0cYpy/Wz
	 PKoUgAqAkpqtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E2AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166841165434.19340.11948356216470289543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5aa44861772e72e1e7792b6528708b007bdd9e4f7fe98210bbf933cd57bee76
Date: Mon, 14 Nov 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668411654
