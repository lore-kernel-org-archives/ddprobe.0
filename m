Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398281C7281
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729806354; cv=none; b=XeB6rbrMsmyusSUodVGxATqJvAuNmkzTao7Fhaj9RVjuflGZ8fAaFOyk1Z5/YGRmgbntcNASFDnikW/4DfK/y1PJys5NyS96T7+qncxilYtzP/EAg2PY4H16f8Swu7JOILl/UBe537PMJSJiTqtE5MeG12Yn5ih1EwzXhDSRJXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729806354; c=relaxed/simple;
	bh=R/iESWmdSwaHnJl3Z7f2QkZKVTKmLhxo62jHu64CJOI=;
	h=To:Subject:From:Message-Id:Date; b=eu4jq/RFEBt9b55KMlxCDMdXqkf/m7RsP8yT7SYuOTnZ9PrZ/RZoA0zYZERXa3ztCn6qfWCbL2PdE9IMVEdLi9Syxb2CIq0uSK4vGnZEQrCRtjzxtbfL60H8Osc14Tchzoki5wqMHOutS5uw1BNSsLKkRchJLYKeah7WhkndoIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/sf7w2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/sf7w2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE49AC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729806353;
	bh=R/iESWmdSwaHnJl3Z7f2QkZKVTKmLhxo62jHu64CJOI=;
	h=To:Subject:From:Date:From;
	b=k/sf7w2ChVJEQcHrjjSXZvAFtq6pZ+YdBllXHNoi4Z5frvwP29NF3Jswn1DW729vq
	 Sd044nnX/heKwXBXAr16uTPPBiNg6JO2nWS3vkb0VuL9ZEcqrKCy26Tx5fKGNo1aqN
	 OHhDm0m/+QAK6PhRe+nmW0Xf5VypjyTe3iTHXiUzxAhNp8qLaM1X4Sqx+8TyCBN1gG
	 R0cv6v+IYVrkSU+DmCjNpwMNXVpeAR0XDRdNsTLK0+f37CIRe0TvRiojhi6GYOY4Ta
	 p8k4ktUlYbvdnuLYUuN1kUKe7W8R79jQDMLdCGDn52kk6SzkZ1d25zyqfTBRmRGuG3
	 rK0ROfsr/HXAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1E2D10388
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172980635361.20108.7637551009801409171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d56c95810adf937d4136afa232698df691abf95459c2fc486fd7a4209a4c8f
Date: Thu, 24 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729806353
