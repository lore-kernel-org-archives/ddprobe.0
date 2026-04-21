Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3601C5F11
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776786453; cv=none; b=fFX90BEqWummUx5frzodU8A5I8+wfIYtMOAUYWqj+sm0G+eOiGA34sO7Z99r9yowLXFmZRi1j3UaXIbRehMKramywTg42tZiDKyPoDz7PeqCQNznr4nia4fe1k+4ASsiAKSt9kq2iES0Z6wTC2Xyxfa2VFSBaLL/5guFvl1nRNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776786453; c=relaxed/simple;
	bh=eVtyhSiKKf7LfK+H2L5x4XkLUT5BB0A13tYO+UMZkro=;
	h=To:Subject:From:Message-Id:Date; b=Q3mWBQrCg2QLWt0UiUc0VACzQI91g9rhrRqaVTkiFiNuP7cBYusk8iH9bedmDYyAnG8khgJ9t9PNunvzil/MxA7dDnNEO5hNuF3ailjvTiSYdnTC59ojg/DHF6D7N94Fw1nu4yCEkDMQEJ87+voHJ78I3aqWJZCklrOlWeQ2XmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kte85LqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kte85LqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD27FC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776786453;
	bh=eVtyhSiKKf7LfK+H2L5x4XkLUT5BB0A13tYO+UMZkro=;
	h=To:Subject:From:Date:From;
	b=kte85LqYx9+cFW/NZtr9e9piuEPgQZUGpe0+qDVG7xVYBZG5gDOzYpfQ9cqr+5y+W
	 m19XlIlOj0VxaA8GrIpl8XBMT1zAodzyJcFSSQUnAd0bapV8qQypurGuKYw9HT0EKH
	 +nKu2d8KmOOHUl5EI/rLz2vRTgB8wMimHCD+Qo1XWTwH+HRe+3gDnNMWxMozNrLXQR
	 UZB1DYVF6vVvzjyVFw38kMIGvKoa4Swd6zST1TxlajYxcsIgvnG5SFp/AY1Uxrnhdx
	 TnvMdQwadhLp0YDXly+3nxjSVLax9ilwAIOIr1xq6BJiRi8uJRmmHZwEDwnl0vyHma
	 TUz/+2PeVu+DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96C4F8FA97
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678645368.9723.12172674860728448679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8276a5c05694b42dccd5f388a51eb7ee99ddf69caf82c00f4edfefc342ed015c
Date: Tue, 21 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776786453
