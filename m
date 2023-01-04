Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE4147C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80E92C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672804287;
	bh=MVfmYkcJ6sFu4rPcjJrQvPPy9riTlvxWLUDfR8+BPEg=;
	h=To:Subject:From:Date:From;
	b=VWq3Qp+mDcmrTA6UtdkFuWiJeO7jyRsC+INt3nD3P8PDkdGq7s2X8C4kuGnED6DRv
	 pEZXSIum4YJb/xTfTqZmzQ0B+NEmARlOufwVyPtbdMFiuK0dOLrIvLiKtPymIPckqz
	 wsxHjk5/F9ccxRVFWFHoQCOhTxTKtWumkU80a085q/BOK0ToPqE29LKY55MLtzJhga
	 hovGuHRlXXCRX/uCESaJVrwWTeadSiAMMdU46knTZpj5HReXLzFDPe75DL834WHEha
	 Ay1gfl4KG2QhIjburszdeNE+rxrJJj1HATYj2lfuBuMyp+RzBiU935KBHImHr9fcp3
	 kEmX2DPDhqqzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B5BC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167280428738.7178.12865161214479592247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3390f77baf84d6573a708035b84287360e988ffb9612850a097eb4c336c9cc4e
Date: Wed, 04 Jan 2023 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672804287
