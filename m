Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638B217C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 02:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7DB7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 02:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688955428;
	bh=bsuIxr8NsvcoVyvVR+OnV1V7gsvr7EKlgpzFTPtRVwU=;
	h=To:Subject:From:Date:From;
	b=ZZFLEH/gcEcPhMHWCzwMYSVB8KuoAtM4hhjX3UFQ4TajdeRRee1cIJ639kB4d0wum
	 FVksfV372ie6XJGTzrTQZWC+ZouyvDtRPxaynyCeNUK1HMdeGDRmTW3rNUs59ICVWu
	 +2xRraT1N4zzXFGXdACDl4EFmHvkeheFxikcw6wKCBDmuCgG4Unep49PcqC7CvkRcV
	 BKRfLzBeeEmSdGFChtR8spNiKvB+3yUOFDlTMnCgsc9G3n1CVqInrQO8wbz4p3KHLR
	 O74heBYxtSKkiFLyIvB8zKBBbU2l4RSovQOWQ4MKOCInlINrg+n5QPnTdLZgHEWqHB
	 qakFiCG/VeG1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A741EC001B0
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 02:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168895542866.25448.17902072911974878084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a4f5958ea80174e1fe699d833238b62ff0efbda0e4f5ef5d588479e923738f
Date: Mon, 10 Jul 2023 02:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688955428
