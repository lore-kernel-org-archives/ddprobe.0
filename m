Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26B67F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B7D2C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672618887;
	bh=82u+BNfjRr0rlgR4Kjl5L3JpA1+uq6QpHfiawkImYsg=;
	h=To:Subject:From:Date:From;
	b=JOJR/BQ61mWV9NMnP2rmn5ndQigbbRhd/8+89aGz7bioo0LnhPELvHlBn6+Hv6LkP
	 7xx5uQhuPdRlUuH0NUKrZQ0l+meR/9qV4qoPUuZaxI0dZ4LofUUMJEgeBiMp34rcii
	 zhmpjbL/WltsnYF1GQFVrcZf5VE5CvvbWJwIa2v3iKX5KvB+PcVJeaX7n2VAznbbdG
	 AceHHb/2ZyZC7NfidgOwRqFR00/91UVjSNLRkpAbZCoJehnkEW29BOrN1eHq6JEBj5
	 +54rQK1QCYeNfdySfuhhg0So5GY4w5XHzKhbOleN9L9WhxfYzWatXCvtvoovcg9YGM
	 M4e578Q7zoRzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D042C4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167261888741.23550.971971078291513964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a958cc97d337d161fc297a6e469b669a062881b7c863e5885fc50419f6f53d5c
Date: Mon, 02 Jan 2023 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672618887
