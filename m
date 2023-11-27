Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA3D42D7AD
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OE11Czf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F55BC433C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701088696;
	bh=eWDaPQXOGWcBc+1Ao+9S7gKfs8IYziVQPuESPA115DA=;
	h=To:Subject:From:Date:From;
	b=OE11Czf/M53E3WqFzNIt3wVNbUzHG7JyKRBJ8CPlDh/YDeWZQErd9Oh/lIIshb7VJ
	 csSS+64ksgx5TbTn/S4foOBcmE/PIcl3SB94onmjO/+acGD1QExZFPPfjTRjpoTlsn
	 K33ANmk1jTQGGxEaCL7OeeQbndT+5N+PAvsjED6YCFbIYLN71SjqtJGm5BFR+SWfFn
	 Cr21TBIuPeg0mjP+Yep1PlH0MMUBmfGH5j9LGmIUkdQJDgPCmZ1kxSdEq419ebSNM+
	 PI6es3y4F9oYcHRsmSVMY7tpBRWf7F5ZcXKWpy6s/4GA1ZQ2CfcgaravOs1z1EXatA
	 7DEmSEr4LqB6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B72C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170108869640.28552.12692679024639578168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f678461826d00e8e8acbda68e14aee06a973f33178ecc9437544baa71c67ca
Date: Mon, 27 Nov 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701088696
