Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE5017EA
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 07:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6751C433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 07:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680507965;
	bh=5lZGqpdPCSkc3RDk+T+XhzByUvuw88ykG+QxmPWMBAg=;
	h=To:Subject:From:Date:From;
	b=taL/YYvnu+hliiLPHEvKJpZKtUjkZ/yzgXVcuuH+WW7pADXtHG2ClZ0AOUIXvgHct
	 giIwdLZDCFFAnwf4VFmocSOn4RkHko+G9sUuoHXu47TIcuxa2BAhowf+xrCJX9ovGi
	 +N9opnrnaVH8+LuNoTBSXMRqZULQAzHf3j3aR14WEmHyqEskWjcX0zJRHRxyo9Sa1z
	 j1zGehhxS9HMraoCHolOb1YhuUstifNJvHe55U/up063YHd47hJi5BqvLPGvBWcxAJ
	 qWR28N/58qYuKoZHlw/5273W66PDwag5J/X01HuIJjLEBbpzlziJCw9xcYnWSQdyVe
	 3ZXsMmlt/pYNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66EDC77B60
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 07:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168050796574.1102.9618345528195843028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08677356efc3579b64c288a84ff4a15e5685309801624eee25701df83bf7391
Date: Mon, 03 Apr 2023 07:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680507965
