Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543F21FAF
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 06:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7616C433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 06:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690525328;
	bh=GHtFHlM95JakFHunN0k4/izqpE05cxtrzc/ClyoybB0=;
	h=To:Subject:From:Date:From;
	b=OhHaiXiM3v4t1CizAS/NA7vG0BZ7Z/nb1aL3KCLj8KTp64tZXW8PHfekmOsewQL00
	 NQDlZxcFOpSVB6p8WUQjmMpPk3plj/e3gapBX442JTENmIwFQQP9wllkSWqQVGBPIR
	 lwSrRXM+dr0eWK2B0BrhBvd7wVImdWzwCycvSRXkpy03q4+SmjBZyYfz/8bp3CovCI
	 RX6Ot72SDhUlfrf6nTwe0kwGJFH714/cYg1QTTwcg1kYnz1vtqGklWWss4DGd+Dedl
	 At24Wt/5eFPVrzq/onBdrj3kzQamqpxvN7RHCe4+Q3Q4TOpuX2NhW0+nLJTeM7bv2S
	 wJoEqFkhBzHXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA710C0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 06:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169052532869.8427.3701364566516747840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7dbab70765439dd5054d13079b26c11656446437398ee18642105f23a44e6bf
Date: Fri, 28 Jul 2023 06:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690525328
