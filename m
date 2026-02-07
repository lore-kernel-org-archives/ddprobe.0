Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2690189BB0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770476633; cv=none; b=i/TTX/SWyDM+Sitwb6dizGRyIu/hMaV6fOeDjZvG/GN1csZlLgEBCB0UlRqJ1zPndq2JOdqg5A4Nl0oB1wbmVpKq+hrlQQvtrMG7fx7MuHBGNc2DHXTvpHkagOr9B9nXpJONHBPBlhMsjt9g7hZ+WWzDULLIMs+4h/LZuRF15UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770476633; c=relaxed/simple;
	bh=AXQk8qhIXipAgiq+x79ByGmhgPwVHgS3fg9CwXcs83o=;
	h=To:Subject:From:Message-Id:Date; b=ZwyCwTVhwrVwWkgI5wMfEFPrXbMIC/71k427S13WZux/Vtc7sEWwFjV2dDOQRWJrgJfDeDkdeRfb2cscri6/BbC+yCYkoRbSRah6t2BqMy1Q3giGr2a8tv4BHb1qS90t+BRVNSiu9nhDPyyj5rUPzi20naWG78oHnf5I+P8dE1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAAj0i6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAAj0i6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70EAC19421
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770476633;
	bh=AXQk8qhIXipAgiq+x79ByGmhgPwVHgS3fg9CwXcs83o=;
	h=To:Subject:From:Date:From;
	b=qAAj0i6vQgxB6yLFlp8SikeQjADNAOojIrG9W9C3pIuXcLPdy1ZK+ckgoGsxXFDJK
	 ji1o3MUtsAqEJt5gzk0fLkqyVJsQtR9tLcqeeLBaWH2I1qIiShqq6r1h3Ep1f+1v/2
	 6cpTyO2gK4HfoZwXbKbO5nWUZ60EEG9DNgVEBR8KoJoSAeeuZgRxU+rIjkGafgmDfc
	 1nOachHzqTtnM8PVjs/Cvvw8rJVlPBh/xt+zJTtbJqPMVdnZsffT2+VJYrxEKMGBTt
	 CUaSZctDRscyMhDI+CY+GRRIvoB5ypahMyV2UPTqqFmInL5WwJME1gEaI3rV1pXsbK
	 IAJy4nKZLRRWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B87EE0AE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047663360.31199.8408410825279435388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ebb2ec283d35762992080835e8384d88550a31febe10ef8a5aba8f5c13583de
Date: Sat, 07 Feb 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770476633
