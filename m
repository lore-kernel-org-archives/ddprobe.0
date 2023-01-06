Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6FEA2770E
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83778C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673025687;
	bh=OUlU+SohsU4tuH6JdGTbOnkn/E4kEQ9GijAUtEh80oE=;
	h=To:Subject:From:Date:From;
	b=BYYIivHVrEDQo0oU40ombBWPe7/KUIqX7rd+VmGnJ7nggw1Uwe14KHGh6wNaEPTvw
	 UzJUsYyf53tiwglV3BddtR8Y1HwV57MxVTOUfcgnI4ELQotB/Kg1GCLkYzcx/XhMfO
	 vNOC3YKrUAva0cVmlLPL+eRdWXtEmSoArrxj9MUIA2x4FyZPkxJk1flgxB+xfoQ7nX
	 VqTgCE09BSI8dN2Ufm7WX33CuD9LghRoJRVRNI8eJMav5GDVNN+XJoNX8RkTwdCtGH
	 jGxC9HZMQxvvGcxjguP3ik6zKv0QdnLHmxNM3xnSSt8fSNUS4yl5zWGnRByoKrZI7G
	 chGSXQQx72nVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669F5C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167302568741.12654.16877668885750960532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255237b4d197ff120c0cdc76849f2d3c4826d884ab0cac64e7c07d21adc3c32f
Date: Fri, 06 Jan 2023 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673025687
