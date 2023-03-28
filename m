Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38ED67E6
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 01:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C3FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 01:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679965385;
	bh=q3mwkbau8z9DEKuVqfRRlLctjkSP2wsoecKpUt8s/Ms=;
	h=To:Subject:From:Date:From;
	b=t6Vc9Kb2GL3ej3+8G9Li5Mv2Qak9PC1CCA/LeTYTdUZ/vzhLWVYm5kZ3MilsEd/qe
	 tqek68uuedtH/dXLxjLai/1qfLdo7p67cu+iXzCLNrG9M4zbUx9JfG9HBKDH71A+sD
	 q1B0EpY4UrGvKLRa93ZvF9LO5tfkeDUv4Mwr4eAwi8UGD/vb8qKDa7NdNpz1sTCTxO
	 XymYv0tscOt9Y+K+PMY0Feas4djFSzED4x+BAek3iRgYTAxUdQHhRukImLFeDFnLFm
	 DvfZgsPIQayHGNS53P0s7ocmFqy92WOHrV4HOg21I0hUvP76SnJuqCQlEifzOJ9fqy
	 8fe7yn121GT2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD153C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 01:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167996538576.11773.3998645670857445787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409419fce1cd30024119a988efe8d2799cf06f6c2896470ff171e21530c1e1c7
Date: Tue, 28 Mar 2023 01:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679965385
