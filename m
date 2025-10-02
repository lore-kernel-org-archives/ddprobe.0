Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D1A1DA0E1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759422594; cv=none; b=Z9301JQ0PlUzq7yj7gf98IJbDsSjxPijgScswERO8ZbB2wuT3Adud1TAFB7mzyp8Ky3LT+BVx5sjgOHu+3nmxWwXzz0LmMrwgG9kv6Q+UDKyk3nE1266dQ+y9OsENGU994jBHDvMhnTLLZdfGhnP9bmPX8XofveXawe4OgMRcMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759422594; c=relaxed/simple;
	bh=BeVgTYSXM0jpvWuH2qiMfrX8vJlB778qTBgAVW8ewiM=;
	h=To:Subject:From:Message-Id:Date; b=YlEpQIEJDM1XWx4fX0+rbnOjEMXnVCDlf/DYl+eM8pfVTk/90keauW9/Bfq0deRxCjJ1M9P7afud3fcQP4gI7QGg7ReofukSyDrYhMGYvLYNbQh62cJTazmW3ej6gw/sg5ejKlrZ3HV5ioTXlsowgs7H1ic0nS/X4eR+f9ynvvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCBytfpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCBytfpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FCBC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759422593;
	bh=BeVgTYSXM0jpvWuH2qiMfrX8vJlB778qTBgAVW8ewiM=;
	h=To:Subject:From:Date:From;
	b=fCBytfpd6hftyVC5IQ7qav97GACy90bDk+eW+Bjge6Mmj99UYN80U8VUG/B23l+Jk
	 7y1l49Lz0Cv4ZAo68CMO86DaV44ufPBGZ4iPZk6i1TU/u2IcOtiwsmIfl2GxV7tzvG
	 vxUfY1iw2+Z9k1p1ZABFEZPkpEunnWU+aOvTqKZ8vYah7N6uHIzY+m7FwOJhgofm5y
	 8GWjHngbQKA2LG0TQgr4uq29xJ+E+hZABMs12r5D0X4YcJeY+vY4rNhsVvYbKyWPaf
	 aVTiN4Tmtl+3RQ3DPG/3NoH4pHLmbovfrACnm3xdcS+ZqfE+vkD8f6A8w+hBqAC3nV
	 HILxXs8cFbBow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C28CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942259358.23761.10737260361825457832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3604e46b81d0761cc5d1ea5ed667c950920823810993dccbe2dddb83a547f160
Date: Thu, 02 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759422593
