Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BD41374
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 758D2C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668344454;
	bh=cYDuVEq+EaWrUGPGfKQCrLlPocT/jAyBoooAbOiD5sM=;
	h=To:Subject:From:Date:From;
	b=i2FVeSS/ALl2TQdilER3dm6HLzOr6pL6JNFolyshqJ79F5Y07WIpXA+Ird0vfaALS
	 JMw6LgbdyAAVWnHCHtEYGaz9VBChCoKLFQr0nEmCbudfWl9caafEHMzwvBjB1t98uE
	 By/O0Mvtem7hGJrdPbyViE3nYRJVNGWbAWSs+6MS4YSClgFu8rfR27hVSXZ8ued8Cq
	 SItx086eD149SDgAQQ3NVHFq+xpgyAGjvtVGyhUdQOEIuvcuqFc7Ikmze+AuVs5mzq
	 4D41oCPiEmaxaeiOM5XYfqKBISjJH7XoILzSFBRZJxPcbrBF4VfvPRUIVawcx8F+bh
	 /xAiveChuS+DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54739C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166834445433.12488.16908618179799562654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c957925d8b23c42d094f29733af9d7e50146d5fbe3b5d6579aacc0cc5393e8
Date: Sun, 13 Nov 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668344454
