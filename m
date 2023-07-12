Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E4914F74
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 17:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6AEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 17:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689182348;
	bh=alZSPf/jnzWrltY6xeOanQ1YG6KYEs2ISxB+cN/FYPw=;
	h=To:Subject:From:Date:From;
	b=c8HksvzyBlioBRcwFz2kxb1EYvqPR/wEj42ms6EQEMZ5t0ezMOUCjXYy5okimDQd8
	 5Amo4/EsBAof4tHt7G+X/di7DOClSsPoyQP7TLeoN1zuHl7cHUAFueDl9nqWPlaN3n
	 GRlY2MFiFJpfrt4Q8DqPWilyOdgfNpT+QxdDvtvTVYfKzMfG39Um+gxWeGADpJs4Fn
	 AmjUieBNvSdrR596wAgjWWnbd4JjK/98EAV2j3JCPl0ZNplkyryxoSif5lUrYER6o5
	 T42I+T02h5kJ0dGt+PeCkS5zvOLCxCu76JhZgCiunF5a5hD78jGFc/Osl9lDWLp7II
	 tSVoeL0MO9O/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0350EB64DD
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 17:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168918234870.5515.7446453208887045087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6446f0537a541964477de82a4ca2e0c94f996c20adcda905a5c8822345bcef8
Date: Wed, 12 Jul 2023 17:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689182348
