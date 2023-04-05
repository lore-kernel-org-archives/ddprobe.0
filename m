Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D90EC5
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 11:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC167C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 11:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680695825;
	bh=oP+Rjujnle9YjxQabdLzDWRP8IDdw+f9XdCQEAPA5mE=;
	h=To:Subject:From:Date:From;
	b=VqVZYITGp0hwjhEvVcUfWX7+6mfp4krFte7Nr/IVKpTMrJvrYlOGkasj25aJOqWSS
	 gBewz6cScpHv8ctqlGGfTxLUjSeINV5nQij4PFkot/cxKAvtkXaTitdfOYy92aHOKt
	 1c0IIfnsQA1du44vE3NB4vLhi5trvVs/Hw8Kbs26OS9+XdA50Fdo0fttPwqb3vqRdl
	 ejS/pFwqJwNk8tQKipzQ6yIjQbaTYVwprZU5+uuhmE5KAQlN79dM9w1OXY1AbPtTuu
	 xJnT5fb1gBqnVSmyDlV2l1+lfc/RQmJuo5Slx7OpGp9e+IFu0A7/QcWQcEb3umPKR+
	 ZY5rFThuuiQLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DC0C7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 11:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168069582574.15023.9525296630444675314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9b946517d28594df8ff542964b3d46cf02fba123817eff9f9315f50fe53587
Date: Wed, 05 Apr 2023 11:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680695825
