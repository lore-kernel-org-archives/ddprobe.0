Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE99C7E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A47EC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670551287;
	bh=+lP9LWQUwE9YSoWZNIHZhYKjkhtG9nNOp/KiXxZEG78=;
	h=To:Subject:From:Date:From;
	b=e4YMZ/Dv0WbSwODogJ3oYVJsupEMTjf6A6coAPDfFnos52ImQdiZ9MA0OVIMrEESt
	 106raOVqA1o6rC340ahG9Gt/f/Gevk7gO5ZbLXHz7Sqinj61ttrZRUz21+SdtUXgXz
	 BwR9Ja5b4+T1GFhN2P+p/4YeZgwhqAwzG5ZAgSWVs+5Q/bEWJYh9guSdOhwpTA2Ppw
	 VWQ9WmRhZVGxwoTL2coBtTetv4RRPlUNbEu4xPpjV2qJl6DBUkfZ4jBZOaDOiICb+q
	 cgZLGpL/MG6K3/CI34Z7a2E9g/zZhDpHPwpdm6P27Di73gzpdBnlfPZ2ph9nJoEMvT
	 i0MfaWFlfyAPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EFEEC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055128738.6063.2556547989686860128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28884d827d6909675e64c283e124b0edfa8b528f5775dfa9310393b1533b0369
Date: Fri, 09 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670551287
