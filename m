Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0EF43C34
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CD10C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672521087;
	bh=tLolZtigj/Ke9OT7N5YSkMcSLefqmWSqPNB81UWY05g=;
	h=To:Subject:From:Date:From;
	b=O6O2WfVY1/gvsrtOL0zzsnMf6pzHYAAvb6p2bKYhsCMgG7IONE5R9TAblMAaq9G/W
	 /JrkO8hDyV4CMQCd0EwP+p44OwFgOH5jCQD0Nl4YqY5ujc5iO74zNj/bNVql2LzejH
	 UtHhtUFRTOr71GjIQrFq1vpkD9l/WopApnz0Mq8Aa7pyev2quHBQnmlZpt0/cq4ave
	 KOlW5dqN57gmf/YmOQBDGo0RIt8hdfAYGptM67SRcOUT3LEaNV1oko1qEoDs2E1rXa
	 Uq8AqOb1vSQ1BmPECk9Bt7mzD0O2ZBm5/kzZalJu/s62HHzj0fLXNl5Kuj9ZaXcDgF
	 YFAy8Qzp+vaZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC42C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167252108741.26963.3109745549859853912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9804cc42284919d21f7468651f0308ac5779605aadf36838d96daaa0b715707
Date: Sat, 31 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672521087
