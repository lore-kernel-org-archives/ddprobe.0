Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCEB8EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F49DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670754687;
	bh=ERwnHVdGsrTVpte5J46+KzMiqomqP6jQQ4sYt/MeCvs=;
	h=To:Subject:From:Date:From;
	b=LVC/41DBVXrd904pJoMmDgzIMpIwzGaQgLQ9qAU1KuC0r88yRXikcHaXCh+1dVnma
	 k8RxK5nAiEKzbs4oyvNMyBZBBZgq817XcsTNFQI55e2objpicPr/OgeR2eb8HXDAAI
	 OCB5GS2X3bpn1WJz/WAvQjg5s8kZODTWz/aucFMkqSqbFx+jLy2B9RoFgo4PdOp9We
	 vCbGt8cCMF1AeS9lsU3s1osvjtfYAJ0qlU5jkfixP0hGQatt6dNNdi0RPCXiQU/URe
	 +AJrxmYiXHiV6w8f1iFAxdXPoVDcqPUFSnkK8STXRJosFfgiRUWvP06E1tFkVTivlw
	 cg+P9CTY8m5JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6455CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167075468740.8971.3548610328089417867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7bad6a6d595ffbccbc40cae5d4b28a7c76d57b79e369f70b4937afeae3a4f9b
Date: Sun, 11 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670754687
