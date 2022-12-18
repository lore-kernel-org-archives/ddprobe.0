Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E166C2CAB
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 831E7C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671391887;
	bh=U7y26vWX32g4cEif2i+l5lrUHxBT6G3rg8yJqlWkmFk=;
	h=To:Subject:From:Date:From;
	b=SEJG9DbxL9esjNeSi9acPLE61LXGyiMnxyjd75+M9JjMUvdCA7brXRPUzyJ0xyk+n
	 J48x5VFNkH+wJbk9qcyNuq/W58bnsIDIFMzROjBjdOPwkuperEmw2BOUaweZfNekT3
	 28iMvgcUb7SLx6GUiJybnid1erydglvyxsKeBPyCfO7xi7LMGagyAte3cB217i19OX
	 mHSjEYK6IxcfpkObmQp8d9dvYJXV//R68/iFhiVsL0tSOEtkGSS4UQxzXPdPAJqlJI
	 RC4RfUMH36C13Ar44T1pmVh24A7wcM9oWQy02zA4/WHAjdbP1RRetqyvM3hgtjnTNc
	 Hvfh5UyJzTooQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 683D2C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167139188740.4647.13309585154136781304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f365fbb669179d8c2184775f5a92894184632e68ba1dd04231f6e762ad72d382
Date: Sun, 18 Dec 2022 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671391887
