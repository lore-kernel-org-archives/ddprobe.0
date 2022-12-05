Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5417184
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A608C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670199054;
	bh=ft2QukDo5Wb+VnvTME3u1hdnVRpZ9puQwS+b60RrL7k=;
	h=To:Subject:From:Date:From;
	b=NAY+oxZknlg198EEMBoKSXwiQcx94ijDBPR7XRI4mHD285ltGle2JYPZPOJyFc38g
	 AHzVwUu+okCdv+Cp6yy73sdp9IiLyqHDBonTAK2epVpgV/5XM/TKJxV6R4JfP/GU49
	 TwMpbgnwE4CMfjg9wmoLZiElp4pREgVTdbvfdFLa8Dpk6EulDCuc7reU8Qdw30MjA6
	 QM2G6ww3wOYhk6QcQUhIWMNQMwzdPied4VWN33dBc4mDRRfoJRNK49giUQ42D8ZYQo
	 y+sTXFTYu17DD1E0MU7ctYFUnbUqo12l6Vp4jW0Jc1iyqxDuQSsEycgG3CjXDEyzaC
	 IJKoi7x5mV2xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57699C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167019905435.13248.16373758590399773665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfbcbfa2842a9ad90f637fbe6d7a774999ed1e438292dcbc3d8ecf31ce576ec7
Date: Mon, 05 Dec 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670199054
