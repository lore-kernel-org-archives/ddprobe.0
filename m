Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF0F17D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJ4iBoni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95071C433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699096696;
	bh=zkk+jaOIdvhNgaGVOwE0558uaPhToZeN41aqrf3al70=;
	h=To:Subject:From:Date:From;
	b=AJ4iBonisrmIgvFkh2XvjjcqP5N5opZx7+Uy1LdtiyqCevWfBGtDXrJVVD99tFav+
	 8CzIk3ZdQEOOSsauLzYqWCgKY5xILJ5OzhzWODOJ5gt2C98aoe3avPC0Dis7d2UMK0
	 SDpcFRrNakOFptXoXTGLKpzKQPf3+F7v4ek1vebT9Z2VQh7ZLEi6xr7WYnW5YGPwXD
	 NkPWcIbbQSC57914OD9BHr6y582CvHj86un2RMGNNBq7qhviaU/41URjmo6bOovvq+
	 IQKEEg4QuyR0U9wPTNTV8AY6PQ9wS77ft5O5t+k73RiLryBaFhib/RgoPqvfOLNkIs
	 xyXKV4XTShktQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 732F0C4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169909669643.20419.11719271995948390961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348f4a0f68a3ee002c645e8b4357d1c83986e1dd3ec3dd0da142bda7083f91ff
Date: Sat, 04 Nov 2023 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699096696
