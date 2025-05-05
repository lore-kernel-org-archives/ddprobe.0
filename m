Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86CB502BE
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746455993; cv=none; b=aCgwIrcXZefGAPDMtMBGD8Gh1x1bLMDMfD8Xq0JKSpgwL5tuWdAoL89hkIYP6sMDj+hQYxIQUAbgC39EfcASsl5zSpHGAAHoGyS9wz2x6h8HhXHgX72vtK32YdGaiHomQMf5UlKowFuhZk6MFSqHa8fT5BssCuYbOy0i70HtiZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746455993; c=relaxed/simple;
	bh=a9eVBSJPPs4UFZenEsV2TKv1MF8ktyF2ZgxnTcFM2w0=;
	h=To:Subject:From:Message-Id:Date; b=J3+OMWLfYaWXEJvsIAc75xO0mGpmspX3Tfu8sT7ppCGxISSqh48jZi/TTT0PcJcBc4ndjrPOCWXiikNgsSLPRyBPZF+yYjdhLwajgZbL6PgSeXDVAlJXuztIKY/t3OTKTl0r2zEylivCI0pXcm0Ou+6/zZxaDXXKrx7s0yY7EJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUpgLJQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUpgLJQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2B2C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746455993;
	bh=a9eVBSJPPs4UFZenEsV2TKv1MF8ktyF2ZgxnTcFM2w0=;
	h=To:Subject:From:Date:From;
	b=WUpgLJQlRG06Bl3ML1JJZDnWsFhN1RF2BMR4MlHHoiCkDoCcGvZk3rkIijPdKMo16
	 v8h9Zt+LY1haKtI1l/cE8HkUrpR+MfcAo+hHdTObqUOjvCFwesla7DRX0fh2pqQI2y
	 a5q6ZXcMho2hYxqaBkEswWDt8hlhZMvJOr3xo8DPDdh5TlZqND0uICULtcUg0uqarU
	 NQbEe4UUsugAUHpFG34UDoMdiNEGiD177HD2NxlFD8YiKRA2IBk+g0KOL3yOy1tNGZ
	 GXzNVZ1wjbUJP98qxZzNxQPncag/27h0NTpJIwl5sLB90nhwyuwIQH42D+i9oTvvey
	 F+5S6doCoLOxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F021C3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174645599357.1679.1125005962155924681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37447fb8e2ad240ed90f4c5b3da7b97ccfeff74234ebc60fbcc205f3f243547f
Date: Mon, 05 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746455993
