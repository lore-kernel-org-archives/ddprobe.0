Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DCD2C9C
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A132C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664837453;
	bh=RPbzwPPBI4+MSVBI0eB2ICh4uRvPyWPb1pRil9cy1rc=;
	h=To:Subject:From:Date:From;
	b=howDfYzJe/ei6o0WTzfKS99HPVHZTQ5i1nLAPLgdkFDEGqeLkayGVJLY0t+B4D9ol
	 emYrN3Tr1+2HxOIuJrAB8UspDItQvkRtbjKUlrnX1wIIfCqL3wyib0F73DTg0rK85f
	 hHMo4OJPe3kTqS4Ogamjuo+gSihDeumna9bUbxabqbuoNsBNkSGUgOivWglwCAC8zC
	 03PPIpE/tFRzzRzM95WOy/rt1bXwSwmAFLETJcBuSy72IdiHszyKFgC85DwxT5DpJy
	 t3VT290Ohp8roxY5QovFgW6hSZZARHJJg6zpxJnLNLuyOHyTyps9nNc9ucdfOnt0mm
	 umPNxlxrtYlqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7199AC433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166483745344.7896.10195336358527511681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f658d77ce746c0aadc6c7fb4ed65b04af3b4150bf60ed9d634d7143819fea00
Date: Mon, 03 Oct 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664837453
