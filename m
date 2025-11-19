Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B7E35770B
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763554314; cv=none; b=uszA4gb2VZVZjCMoaZkLcR0uU17TUj2D3+bs5u6bwfzLmt9/dx0GcSlmKMmaHW6kdLmLMUyeVhBs7o3/yFeKeHyjmIckzcvFz6NIOojbRB6vJawXUnj3nDPNelwZWmPp3gA4T/N2rO6Ztzg9+8H6WlPRD7vjzad4ZB1uJmZ/lKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763554314; c=relaxed/simple;
	bh=J2eUg1sfk3HjGvW7p5HeIQmDuD4KN/Vm8gdZisI4J2E=;
	h=To:Subject:From:Message-Id:Date; b=AMFJo/5RdfdnI3U6BUlgg7ZK2D9OkyA/+YngXCe5jNiWwIYk2Xd4imVS5vGO5E94FxLVV+lvZoEfzRedu9A5MTwlQtcwr0NY59Vv3h3Tl/fKzidxLGiD5i64bsvfaWQqYa927A3Xm04gZgPV03vj9VSJeP5ulq0zDawn+zZS4Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VR4lphuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VR4lphuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EABFCC116D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763554314;
	bh=J2eUg1sfk3HjGvW7p5HeIQmDuD4KN/Vm8gdZisI4J2E=;
	h=To:Subject:From:Date:From;
	b=VR4lphuLzL+gd1leJoxPP9ky7v94PswPO6+Rgc9qh4tQbbLLbfnK/wLPSfvWRD/cD
	 +VNi2S30SUihxh01Bo2QopjpUujDI2x11IvjG0Ft7mLRTBokw3TsbW8VeubmwNob07
	 hHUsvLxsxrJuHgXmDDIvym+x51vVN+y8ilJz/U9wK3VA30DpaPtKTu/tFXHjZbMHFm
	 1w99ECTK3DJ6AbzSZsqQPB3Tq0Gp5ZHmxjLXhIjKYTNP5UWKDy3qyUGjxEawoWU+gm
	 G0s3JPJymM60hH/Brp7SMTIwF+vNmBbI3sv+WTi7jF1T8K6LMhlA3o2w5/yam8eBwo
	 eZ2ZG+Yli+HhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970D9CF31B4
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355431360.29507.17431594547027486657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a2ca819ec9e53c89a81ecc50a54951cfdb706c324922356030284a89db84dc
Date: Wed, 19 Nov 2025 12:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763554313
