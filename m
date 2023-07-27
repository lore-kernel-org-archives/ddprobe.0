Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F70E57A
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 23:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6217C433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 23:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690500728;
	bh=Gl03QEXnANl6Lc+nuIqo2uA2SznBZqOEhXikIFPemiM=;
	h=To:Subject:From:Date:From;
	b=h/OChZgfbCExbPE5NCzXW+GRX+QPD+ojTozA9KUMysRxc1DYGdYaoCNsexDtAFvuf
	 eVFwc1N5JIAADtuTd3wt3AVjtiZyQX+qWAc/pjo10T9NDZ4J9/T0ByEFW30mQ5/LJi
	 8iK647SRApl2GaMEBSD7lccLzBXsRRvsAvGu/PYMBho8oJRLbTR6i9ndXmdudHuZcV
	 8KU+JxEuV2NdA9j+aeHi4XgyftaCZcDz56CRiQS5iPCCvU3ALj+i2kw/VXGkv6OPFB
	 wEfV5ueMWPsWd9CzDswpeY4W8o+8COn1g6MEXWTvqyW6+GNocK1P/sgZJxPjjd3qF2
	 z/LujTxNQUdwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B21EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 23:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169050072869.6965.13971398772720774057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c0322d36fabafa8c5831bc75f385d34dc83061c52fccb47d92a71ddc9b31c7
Date: Thu, 27 Jul 2023 23:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690500728
