Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F6C10E9
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BEFAC433F1
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672218687;
	bh=ZVO6fY+PtN3OLkVRL+vfrcDAO2MRzmErnAAeJOwB174=;
	h=To:Subject:From:Date:From;
	b=T/Fdgzf20HUR3Ux58Dwq+UldMtmKX0N69E86aR2MyGF8gtudd+KQNlyi6lJxz65SB
	 MSfWXjMr/RmoTBFlEjifHMRwoJJcHc433LXXtdWE5h9RlFxxY7VLZ1EeRYKqDvCjeu
	 NgWb3tCzqm5z6Oijk+XkjZn+dAdhy6DK60zFCn9D4ZIsl2qzLTtrmAkepURJvYQTwY
	 OaA6ZjAofh/ktSvXoqI3fMx1MPovSx/Gw/Rh+gT6s5VgfMXQz6+t/+dDvJnbx3bnQ3
	 sy+h6g32SQ2coaC2iCY3G6kbl2KCZEgpNYreVcgYsDrQKy8RTd8ljlrhymZR22jAab
	 Q8K0pRr4EL9uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BEAC4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167221868740.7440.17952271343099024355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d45e17dfa4944d0bf987d8aae128792cca7ce3d9455db9af126d077e8a2e3d2
Date: Wed, 28 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672218687
