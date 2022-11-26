Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB89EB08
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CBECC433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669443054;
	bh=eLZEDcYhEAQ3LEn+RWSGS2HlUpcFAoqWEjE7GF7fTXw=;
	h=To:Subject:From:Date:From;
	b=kfET76oU2atcIwTe+0nfiULyIB4pK+kkqoZk6EdQkKXqeTPyTmzcRR5e9JP2G+NSD
	 xb60BnmBMNs+6yO0Rpc+lhSmUfj3LoMOpDiC9s4mFft3YKkUewBIpb4nIgJAuezimJ
	 ndyUdjMB4yz1sDqv62uRRbrure8KdzF5aWph7PQi2QlYOKLMkfi7I6kO1MacbN876w
	 fGVTSBXz1EEfQZTn8oxOtet6ZzYqMJpOt0+1AXg8K7qFt9H8lw2fOM0C5qjCpPDw+y
	 kv5k9hOYs2hFiUkwv9PEkf0hVz+aBiS+WmVV6FkS+Pv8rowigk2Mhe4STNaOeFQeR9
	 4qro9w+WsHbXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51302C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166944305432.26159.13778893223181608201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b523ecfd974207cd8365c088f97f38527fcd5465e5836ffed5779712d7f116f
Date: Sat, 26 Nov 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669443054
