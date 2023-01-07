Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4BD01C32
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84A8AC433F1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673107287;
	bh=3Z4nMDTGJGz86ZN2B7mUV4bU+vb7JVCEPp4zTBdK0xM=;
	h=To:Subject:From:Date:From;
	b=G8Ra7pGSPv2tzLN6R7YZxIboBq3w92kwl4bI+TU4mdj0pCqW/4aR+Upd3OuZaKzL/
	 cukU+99EkCziyzxJNB6e5PGuWk0WItGzz9h0ThpOXbrqZR3lQGGuCbHgxDalw9zIZ+
	 TxgZztmfLFGCyvpf9vHctvMEbBGS7AbRSm8kJu5PJArsxBHyUEopruhRys3mrYiS3u
	 tiUL6e0093o1hb6HjC4ZDtFXeGPLnSf8T540g+SmmKQrjprqKtVLzMu3o5aIfR7F6d
	 gjtfMglkk+4JtdkM7MuSLCvHw8NV+q7u8iJBizrMwL/ydj8DO0OKAUJyxXYszmgTwH
	 5hu+diiaJEe6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BA82C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167310728740.12022.6085239045341582841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573b32c9067dedf16c1600d9f9b35017c6235ccd824177289a4759afbf0d2114
Date: Sat, 07 Jan 2023 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673107287
