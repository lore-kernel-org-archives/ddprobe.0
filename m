Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7FE10E5
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E193C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670722887;
	bh=oXtEpORanF2i+WOWcgKBx7Bfr3elFZrwlglrE+/Nff0=;
	h=To:Subject:From:Date:From;
	b=LK/tOE7PMwf7hUPMa8vXWQ+t5wsX2Xr2fGF47X6vPUoFe587zxwzM4BSfm7K/qX9Y
	 nqRNyWTh/uHB1n6MCU/nDLz0JL7gAaMudpjVJKBSEYyuT7ogHhtCsOUnKimnp8fcrM
	 J8z4fvy/l/kTQyVtC6RrCiesaNR8naFbpdaIYPFlsQ9nn/GnjgaMn7/v6W5RsKcqDq
	 tVl4ZuJzuTuIy+c2Jw7vDYnutx5fium2TUi5ZnwZiV7wDst6t0YE8xq8JfRpt1u3k1
	 Zjnj5rXCoIRGTFoQbNqQwjf1PAKaxxKC7yM7YqEppwEB9X9RnDxRwJSfscoT/WroH6
	 j8BqdqO5nHcIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 707E5C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167072288741.11092.7827593026380673191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d558ec8db314ba35094d2cb489e9efda06672197a554c6036e3a5381badbe973
Date: Sun, 11 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670722887
