Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF9EA29
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6954FC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669792254;
	bh=clD7jXCpSkSDpdiC5FZKkggnOpvfITeGYnL/K5mixTI=;
	h=To:Subject:From:Date:From;
	b=FFbxUiCQsu49iBMwjiZtumPJi3jAz00iB1J9hXmPaghHqP77slAZHOwoogZLWX1jH
	 NEs3ccY6Wk0Izn99RjEDGrzDmS/41BKn5sERM0DzJPEqcEXoOD/NSwIB58qW3C5XEH
	 b3S0tfmNSEwR+PdRRlZufeN3ijETSFLvDhTDM760Ss+ldF9N92wJ0pA+LeT6LYOF45
	 MiCUvpYC8eFkVQugNAfaIOUAjqBCmJOAxFAsOeyK+OsjH4j0y8b5YmVS68FRef1M44
	 uKzKv2swj6Y2v3KVcd6XhbUZhzL+/a0YfPH9Czdfx11RiUp871T1PKH1dC9reNkUzS
	 sLG2hmn4CR7lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51BA7C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166979225432.27747.931082015805898276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee3d3816666eadeb11a0ca6649f65bda79ed29827b1cf72f62d6fa27a09b0a4
Date: Wed, 30 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669792254
