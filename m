Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A10220F89
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 19:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4045C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 19:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689966728;
	bh=KP1XAuZrfYtyW+6vL2PyYbVRNdy5i9jg7ZhysEyU2KM=;
	h=To:Subject:From:Date:From;
	b=R2JgfKx+N6p0bwVjZgEA1w9Lpv3DkpzJ+QIeMCEfLSP4wx4AXIi7Ul2URzHfyCZn5
	 W8KjFE8WGVarNrcDgolsUyL7GnE+XTFZMBRngHm8E4MUGPOzL9aRpkP8Tb0gJpnM+C
	 yUNANCn3qXTp33T/RIsAmWvsqm39TR8qTGR0oEH2g5yPFQcEnXS5jv/ilI7jqrvoKw
	 EuDiPsUzyYCGxGQIuL/Z/fFZMAHTu1uDfLNfkR7MxeIGBXEL0EZ+3ygIjPIoGQ452N
	 8zB3feO4OG4QJu1R5OVz2zJik4i1zE89SKB6z876NVPn6i22p+Yn64z1C38/2NtBsw
	 +s+7cMcj1CrMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FABC001DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 19:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168996672866.32209.6184343098574927507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3899a813a1774bee93ed493c69ade427cd172a5d7ddef942c077af7e544825b0
Date: Fri, 21 Jul 2023 19:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689966728
