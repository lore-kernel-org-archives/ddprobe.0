Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA69805
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E896C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667572254;
	bh=MOts17lLkbDgEobEKyBeO+vqxdN8/vGcg4MVtPHFShM=;
	h=To:Subject:From:Date:From;
	b=RLebJJTzyXXMdHEOAYRPd6PxkFaXNjmkDAV9aXrkSjzhd4QStUhIpSHPzEdjUNwZt
	 5Yjr5AjoiZY3do2YlchcTqSGnoFizZO+WB+RWPBkQeV9OIhoqW2hLBO2XyA2gLF0ap
	 PghlxW1vMm5VAoKq1Ba/Rn46hypMtFvN0xmSdTs2KfvCkU6OcFzNCoSyjT8c/QufYg
	 OoQkwIuz31T3Trisvl4AYJR5PrbIZ5AfSaZjNdWkyWQYBrhQohOcG4vVQhD5QmO0NL
	 aJbTuVgghYCCOQBXfxZLy+BEL4jtYUiTDwli+n/9Qr0hdZarRFv93NAlIdFyVa+lRJ
	 Nx+cjyweCr98Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7A5C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166757225438.24776.1140019906886134197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1561d4b6cfb19671589317922f08e08791f34e95dca6b601635951777292a15b
Date: Fri, 04 Nov 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667572254
