Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD172586C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756273793; cv=none; b=uAQbIEPo62Q60qHyLQzVYWgkke79LIh9VaKgzBqv5SLAmLuxphqmhggL2DpicpzdzHEGlH0hsI4PYk+b68DbAXiSugP4WbP70UcitbtfQ6W8Y4jMZk1g6LJAvJc+gTDtPa9ll9JE8RUflT3n4Q9tBZgLEbmSQQ744c5UrRF4vUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756273793; c=relaxed/simple;
	bh=Du41Xufb83J3bRFPljdqcKTmIM5kNbUAHyT98Bnbt7k=;
	h=To:Subject:From:Message-Id:Date; b=mDGTRw4VwNv2Rkh8whQhsAdpctRNCCKKjCmq4YcSGGsrlDKUX1XQ1gVuaWUujYFTX0d2XhsFgFJAS776dPlgInKXLZ5NG5HAGFyDxgiqPrvDiE4eHk18ki4obqDtvrzNBiFiwusm5NTbfH/OgGTKOjueoC25yBG7M8d19bYdIv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovEP9LBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovEP9LBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB153C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756273793;
	bh=Du41Xufb83J3bRFPljdqcKTmIM5kNbUAHyT98Bnbt7k=;
	h=To:Subject:From:Date:From;
	b=ovEP9LBb7mYahSEjL9WMeF5LF8HVHru5cUraRKNMKxOua2Ylm8VzLtcOG8hQQMKRa
	 hJ1ec3aT+Yaz2X2bHhHv5wP5A2IyNTeWteK7S+LpiUl8lPE8SqVTAiWxN+vZlGNW75
	 wSDdzQGeaGYJBTHhWSjm5QyzfjWOVIsFM/1KqZGgHHa2/Xwo1bnyrlA0pSK+S0M8B2
	 N4VJuhLIx9KKVfhbjqnl7zXoUhDB0H+TO00csmvENsMj9M7kMeT4dPbqw+p28yu6Ui
	 lTIP4pc8SI0+pu6UW1blZI8Fg+W3fUi7wb150lk7UYPd+/StD6vt65VHLVy3b9Oqk1
	 84qES18Io1/mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C2BC8303F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627379359.2509.7920855450175222893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd5846845bcc5f9e5eb42bf003401d979db2a2b6257a1e0f16ccd40273f2157
Date: Wed, 27 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756273793
