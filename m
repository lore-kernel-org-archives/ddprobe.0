Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9131DF72C
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762772394; cv=none; b=Js9d2oJOUclTHO6N4acNjUxsSq17XNDdoB5TLiLt3wITlR8MUjvvR+mqF9qqUqBxRMsljv+HPMNo6m9vgI7PORzjz2QzcG8KgZhynmAKLlVQ59nL6Xv/ClDiZQaVlTBTya0+W2UxUCZ51Uttsygh3+hXiwmbVFZ4pYG+rqwbXkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762772394; c=relaxed/simple;
	bh=z2+edeaKBuVKdId3wScB6OZjgBs9DewoKRnBOjoBXeE=;
	h=To:Subject:From:Message-Id:Date; b=qY+cfZ2+hf0y5hw/NsAuyidnqGir63eq33IW05MQyJ2/tKNOX/xMPziFMzIgrnzlVN8xJ3HvPlB8Ox8Ax374GQjJJRP81EBHV5R40I8a2mU5LAJfuPy6jRS9jBkC/CMggrFuP+zJXOu4SLBxw3t/+5qK/MqcUA3NT6VqCOqskDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUqIne4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUqIne4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B874C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762772393;
	bh=z2+edeaKBuVKdId3wScB6OZjgBs9DewoKRnBOjoBXeE=;
	h=To:Subject:From:Date:From;
	b=sUqIne4qJpmEBCfp4N/aQS+IvtXUXbjx3u1gik3jZEFC2v7WgBZbiPXDnT4HhY5eR
	 NzUNF4hLTwOPJR8PNoLS41+o4f14Bheq9s91lKVMRPUiAidC5glHkZzMjsSC4+lcPN
	 vcuXVGWjsobZLjy2Qh2E+CLNgYn/hDixlUwB5/gf0tpG6dThFaYgG6U8v8fRTGplnb
	 wshLUwowY7uLKFF7L4uvjzQUGNf1FnFjHXdEQjlvX7NIHTT7A+SbgzbiZfxLmEDqbB
	 QJvRM5DKukUQLXJ+qxv/GNLq6vrmjinI0rqmXLcjI0WGwPGkOEoTiiDSnF0tdIDxdU
	 dkTbNPm2JtdBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E65DCCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277239357.28901.7909994439721966210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1ef06da81d031d8acb9a74fdfc69593d85fa76126caa480abcea524a68ef04
Date: Mon, 10 Nov 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762772393
