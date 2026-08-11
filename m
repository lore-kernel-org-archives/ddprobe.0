Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3009133F58C
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786483834; cv=none; b=tLW9zgnK9tl9KSK4vxcZvKbeB8jNARoTlj3oTj4cvNi+rN652R692DnytK6MymOSqBQksk5jToSd1jGXih5c17686HwL8NsUeCQoc7/hneMRu7IBbT0xRoM1CEDIuTwKgSKKCFXhdiVZDo3Up0LiHYdXrv+RpXWu6tPCZTCiruk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786483834; c=relaxed/simple;
	bh=cQkHsjlo+kTqL4VwC1i4sUsSlx3BUScKNUDhUMreqso=;
	h=To:Subject:From:Message-Id:Date; b=t+gfaGwzxV9xjgspH1XTF1tt8jwGj8YlriuFX8ystsxLNrkRJcyDGYlCTk4l6KFG2mZ9jqp8Qwc/4+bXPYFXeDRn8++AsrpMO9BPpEkoNWADTTX3WU4byjC+9EVUA7f1MjFJk8hKEWplUNVdGiq4RcKBsE0SRYTeVij88oUhW8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsvbwPAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsvbwPAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DA8C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786483833;
	bh=cQkHsjlo+kTqL4VwC1i4sUsSlx3BUScKNUDhUMreqso=;
	h=To:Subject:From:Date:From;
	b=MsvbwPAe+D9dz8wGCid8S5xPbekq+LOvddBHoyMMWclvti/q1k4c0+G9GKgCqB+KP
	 N/bu2Wmda/V4dXd5F89e1v/zYsyeYZP8+cX9QKfKHKKqze7bHcY0+2hVYDQca1GmFl
	 3B2SFz8Fx+Pd0Tf3dD15jNzR5cbbrv3hPnTF2bpiZIOdDMEESiQXy7hkZ2398ZJK5/
	 eJo+lOkehCR3tQXC5rWiyfZvyGAyB/aDhE0OwI4+xTsmJkh1Osnn5Cfm6AULnpvabD
	 KRJ5VMUfNDGqzlf+udw/fPFEkAnwbG7eM9k6bZnz6CQXBWRv59az8ovMjqGqRATHKm
	 huQZcSA4aAmvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBE1C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648383368.6906.11192530020342817794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edeafcfa5effc83405d699df12dfa0bb1159ff85bbc258287be9978b2873319e
Date: Tue, 11 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786483833
