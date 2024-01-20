Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB66738E
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705768697; cv=none; b=hUapmcdAMei7mD8EXwODCkJ09zxduIZDy8t3i0jKpAnWiuL0R3HY7NQPPKbzjVYycLYccZRCdCmzWHUEJWQRy0gR9p7Dw40gvvvYQS4UA24bnQh05r7KItriXoGqYwWIcPha3LTtQg7b/7PUtVQt2/VFo2ZsktDCtHtVpbvHodk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705768697; c=relaxed/simple;
	bh=kIt/hEEu6F7TX6W00hVVWnLYoLlYRCsKGSWuFGHAhpw=;
	h=To:Subject:From:Message-Id:Date; b=iOq/3ZXa7Y8h5L35Dn15OEF83xV2iNQxM2VNmVGXYz5TBbsiWwJxmg4XCNfFXeaRJIphth+ZqX3NnjrJHcPZTkCTLlpExuemKcRdowvm7X5zTwkLfC0RRItKGwuekWluinWb9LYfIjLIz3yDD0XU9b/UK5sFDvtGXix/I59rz6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qI4j59Ww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qI4j59Ww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74417C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705768696;
	bh=kIt/hEEu6F7TX6W00hVVWnLYoLlYRCsKGSWuFGHAhpw=;
	h=To:Subject:From:Date:From;
	b=qI4j59WwPMY9bxWbZrDkKKg3sDcFfdb+oRJDpcPuTSJYHKh32jiDmdVRjDSG80EIC
	 hF7P3BblcRZPHF53kKUV8rSfgG5OZizbbyPRS/+Z/sINem2r08oXy84gpCbUM+WMMS
	 SCU75WxQ8yVZiQglxSODxX8WuOZQXkIajKtLX1Y2oKp2Cqx13Ijxd8mzkrZ6ohONzG
	 Bi2COVtlHagQfQybsgYRL+ufNu1mV4joqL3Umild38jrn43Q9Pu9HNsXfBzrZHbDIr
	 6rIaGyDSEhHCh4YZXpVo/44KpOHvAiZsQX0dzAefUCUWsiKmVxIyGkXOszklAGTZUN
	 iQ0NgNNoAc3zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA99C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170576869637.24973.6773914154309351991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2a84ee220abb6c7bb62527f232429970c2e0b273459222d3daf6fd927c536e
Date: Sat, 20 Jan 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705768696
