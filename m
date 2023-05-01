Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4760A62F
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 03:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A1EC433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 03:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682912885;
	bh=DKsOQpeBh3itMi/hZoCdQdFwBP08RBOgHVMmPeydIw4=;
	h=To:Subject:From:Date:From;
	b=CNHdd5Ikga/zs9exu+qNn3ZkPrkaqR0K7cSIz1ATtGldv/CS3AaNhBCA15vGtJOyb
	 tqwvhNBRhhJ1pito0ipapo5jOCcmIdYOfoKHRQXCiNa/2RukhFOyspTBVnd6LmrN46
	 ECjDM1tCViGZF7sJ7cj4cVZsJPSvdx3GNXvrkvK9iivOtwfnl9pB4/xaYPU2CQxQX3
	 ctR4TEg0aoAdri0tFg4Kcw/0hF6CxCYuWy64zYHGhVpIL7y09wb0f1AJPTuMhvITOC
	 7PKpT/1DHi0lpXkTzpj0bq54/L+GWkj4csfUGB/qPy56yTj4HlYTJLcsFBFMiGN3xT
	 RScoCIGGZ103A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E86C77B61
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 03:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168291288577.5242.4742248835031579122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ff857d76c6f835a70c478911b478051579a24c72e45151b7840e203e9b1273
Date: Mon, 01 May 2023 03:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682912885
