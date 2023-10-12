Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BB036AF1
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 21:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUzPx3Ku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6E7C433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 21:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697144828;
	bh=EFWmllQs3P65SaM+NHJJqmKtFSjeORAuSDoJOKLVG2M=;
	h=To:Subject:From:Date:From;
	b=lUzPx3KulUAwjDwSZh1PIoE53V9Kh6QbWT8fMoSNiMqnITZC9k8OVgDCam9Igrhs1
	 kuqkGIbGOCVB3GMETkub1scUP4SmvCWc/m2n7O+9sqqVXypqwembuMVL6gsk9gf/Lx
	 2NRTFunbCH1U/aFxZdc7KJ1s1MJR/uVgHYql5KKx7vxWpMUD8tTfBJrjOPJjKdnclQ
	 QRvDXtODJZih3/y2PwcFS0u8TtF+MoywavSp4OI3h8lC/BWp9YpIvJYKnNrxJcRNh1
	 1JK6w7mg/To/aPllCjKRm/s0v2hrPZfFbsNjax8M2gldyRyQia14mHbYeRxtwsvq/r
	 Qh7M5lAsRcQ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E59CDB474
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 21:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169714482872.19027.7560596112115645101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f922f2c026b866c2ed810e466dd5394ee8c3dc93ba2c17231be4625e1fd4fff
Date: Thu, 12 Oct 2023 21:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697144828
