Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050012749E6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772221494; cv=none; b=OqYjVH7YWCLIpSdQ4W4jPc9hkscFAu5HJPpNf5YMAqFHmpxnzKvCQjm9/JVA9OXMnn4oSdpqH0+qlD2r6hInqjOmdYCT4z5e1VoG45kr4EtiHrIHwqHELujKh/9iLAAgIVBq0fBN56/tgBWC/gct6LvBmr+mCMp1baIuWBDMCqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772221494; c=relaxed/simple;
	bh=JvxJG+ROBOZWY1RMeHKrddE7ly9eXygGrDV8rn8X848=;
	h=To:Subject:From:Message-Id:Date; b=PEEjnPyxRshJYsJbLehvIh4ZMmE1w+vV1JxoRmqRXyp4s98GbnnAF1RKAY+SfqgYmc+3scF8dnvX+3+mZ+YJFAQsC93vUVNDVSp23XzKcO7iABpK4YYMZNR4MG2LrI1lymrBsHUWEuQDDn8gQujAj7EY6j8O8K/FDBGYctdCT6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UczBnKVx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UczBnKVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A482AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772221493;
	bh=JvxJG+ROBOZWY1RMeHKrddE7ly9eXygGrDV8rn8X848=;
	h=To:Subject:From:Date:From;
	b=UczBnKVxsY2g1oUvfJSx+kuCLHpL4teVpsKyFGU033G+9EuyXTh7/Xq8G8FtJD96C
	 9FS6ZRG9f/Grl8146dHTjI83ievtodVeY/sUmkAv/SlRmTsLx1BAq5jUiqhu6/zCt6
	 puQk/abZn2h0l38VFM4g8PZfMR1krjMW74oMKtWzONAbJysC2hBBmuLddDpNeMXDVJ
	 5dpIkF3TIIlm/E/9MKdvLQtFznOYEt/XCmalAOZ0X93xpf5Wkz+siuhhbHGxLfg12t
	 jxlqft683copm0ad3JMbU1SoxOaS4q04NYZRlqRcPYDI1ehKCULIDVB9/QtHn1Pg8I
	 oB2IkMktxps5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92496FD530A
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222149359.14603.4466705514861959437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de6570f17d3144d941f459bd193bace1f8f54db6b4657053891a7b7d43a4735
Date: Fri, 27 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772221493
