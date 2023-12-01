Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1220F4BAA9
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpZpBNxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7999BC433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701464296;
	bh=t/Mb9XHAcMSIgDEkh5nuz8a+9v7YxOpUsU4DsW668k8=;
	h=To:Subject:From:Date:From;
	b=tpZpBNxb7LHj8Bbhf2EIYgn6PsDp323mKsyOrb9DnJMqin4PkOTvKZrTQJz5R/Zi8
	 gMmfE5stvvxSSo9o/sNSyzXr/k4B/4VbeFoObA891Oh6RElqJoylBTav6IWf5O2+zj
	 zNSr3vK9HN1474PIJFz1jjdnK0oGTVpRodty7r0/OLwmzEn10cjAUWr2UxQ/ev0IC7
	 g+SAvAn8+OkLMqK6jZTWEaNGvGRgtPfeOS1ySwl8vscze+TWBXKHSOX3cChVoHFVPu
	 J2kEl/DFM/qnFQnSEsEZyu/o4z67O/Y7ts44VlB7FHiJSUOB3lALxdweTohMSCg1oo
	 8oRbI3PJUpSfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD4AC4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170146429636.9054.9462150596475967242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acdfe6f36b7fd55b708bf3dd7e6a93569be66f16b85b567801556b5713e6e5ba
Date: Fri, 01 Dec 2023 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701464296
