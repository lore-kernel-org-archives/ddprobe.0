Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB59D8C1D
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72916C43152
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669646454;
	bh=oDExT+onXSDLOHJ5jM64ceNATsbniwQa3fNIYpXdoao=;
	h=To:Subject:From:Date:From;
	b=ilOemtv7T2ZaZFBskE8gmZdiyYOslQPeGC4kyXD9z7a1M6WQTwXgqqlyAsbbQkzA0
	 DZpwZg/2Xks6SdRmAAVPafzeC7eEhJoIc/c5ZP+gNWxF9fNDIswKqQE9ORBl9KPAh/
	 NupCcEPXrU5WLjW4YqSulkHI1BPrwZAtAehaZ3drw9cmG60PfEUSMo6H/bqsx5RwSO
	 w8OJyjfh2+v8jaHtQo4K3P5kxfixIOb46Ghar/1gGAL/MzXGyG4bS8+Vz12w0UBIWd
	 1hopIBkgxwihMbssU3K05n3UjTMalmRh2TVRSdC67GbhWSUenOs8hycGrXzShby1wn
	 WN1sJ8LYFQbWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 593BFC433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166964645435.1232.2932687845344772465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b08ffc26a7a3fa7cc29190acdd7b2296bfa66e67c7a8c2ee29e75234a5c48c7
Date: Mon, 28 Nov 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669646454
