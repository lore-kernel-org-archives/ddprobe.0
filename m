Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6189835892
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 15:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlQq+rty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C009BC433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 15:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696864028;
	bh=7fXXDhfgxwD/XsoDlazUV8CMF6Deo9xZu+DnAE+E4Pc=;
	h=To:Subject:From:Date:From;
	b=MlQq+rtyQBxTWqkoIbhOvtiDctzqwc2IJYuM8r23CMVZy4bHJ7YmwiDKirqVcHkMS
	 wyZk5DiWfk8la2gn+sl4mhwwB3xnEMoKkjxRSdjzlFOIvK+hetbWMdqOrXPOA40Oky
	 0MiukGSONexrRlFc+ge6ygu79gz3LY0Ea9Ye6csadVb/L2Hm7yT9nYctUla5onqWBM
	 kLf3gPUgkRhJ9sSeCbHuMxUijdObnuR5FdfssKYpbWokHIsSJWN8bOGgSdtfm9j52L
	 GOYbSwFggg/6pqzYgdIybByYUMjRcTUZ5nqSULpndtu8HnpqORjXoL2+V8b6Hybfkc
	 v6UmzTWqfZ9RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A745FE95A91
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 15:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169686402867.3951.16148620284471513154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd6f4a52e4c536d1dd8a1631b9a6ce8456f77d6a7431c2ee655cedb472d9c59
Date: Mon, 09 Oct 2023 15:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696864028
