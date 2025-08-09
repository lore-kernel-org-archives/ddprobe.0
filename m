Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1485B2356C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754774394; cv=none; b=ibIXTWsvqcayL9qNKa3hHvnacIBpw2nYyfwSkRb4igh2I6GVGD8CVBW4Pectpnx5V3YIAx15eWLIBV/vYH18zN1d34AHBuY767/o5CxovzWLaiH39oIDKPq38SXTNFQ2nRUlZEBn3slrErfHHyXJ9hqhPIJQi5GptKVYQn772a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754774394; c=relaxed/simple;
	bh=LE2yB1rW+4uyJxahm0hGiy7BIKw5i3bY/kX6H1usrs8=;
	h=To:Subject:From:Message-Id:Date; b=IJa+Ybk2J2rMQ4JjAbwZ2HG9eMrXvgJ3Hznn5z4uy3+9M7U3gvB8N0jf63+QvP8Vi40E+kfQibiFTu93MprDuz72SA6MqRfflSsF4Xm2Zcj0adbMfnRl6VvfapJxqEHf4booYxAlp21s+EHlc/aXn0mPw0posQVoLUlsDOp0LKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjFvcGQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjFvcGQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C8FC4CEF0
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754774393;
	bh=LE2yB1rW+4uyJxahm0hGiy7BIKw5i3bY/kX6H1usrs8=;
	h=To:Subject:From:Date:From;
	b=gjFvcGQ9zmrGSco+/OohNg+NLYezOFFPQwUNl1RgE7fT9CJTcRQj9i1Xuq24ms+xn
	 ll4MHiPQ0qnJmjLBGyDEdBk4AnkNqTHPmUVaCm4/i/cEsbUGkyzQcso+JKKZlAp06Y
	 qD1V1mRFdTPeddQu/oNtpr+1YLVQp4ZUNy6ePI3RYNFiM6KRYLmaju+4G8Nm3Wavfn
	 sSNgjISa1h0KcMkJtMn2FI4H2pkkPm7A6IeNk6k60AoUFLhS5DRVclJdqvthfYTWLu
	 EXySEtvNFyT2PJ8qzYzB0vpqOrXuMH8dfxbtenrXM2sITf0q/sLNS/XW3BNDVC4nA1
	 l1Nhij+5IvJRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93903C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477439357.1393.11945437282661442496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0dc63fc1714051933379091fc36b107fc31fb272894e92585640889ee8a35de
Date: Sat, 09 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754774393
