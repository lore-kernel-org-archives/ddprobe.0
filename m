Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0851284684
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767902634; cv=none; b=sVunQnD+m2I+xTMBny1T+5eGw/VlMZCG1ZyHJCjgFD0uXSXQlglsql5NS8q6gxcYuTFO50XWH5H5e6xxH8bQmAGFU+bDgW4dERJVS4b2GhR6bb+jmjUNWKZD2+hl+qGek+eWJKSM2OGMDvXmZYkUK/s2V4iRDV+7f+g5x0osW2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767902634; c=relaxed/simple;
	bh=/HSTeGbrvpkOBqiEyoeENIlE4Aeqnqhi7kK9BtONN84=;
	h=To:Subject:From:Message-Id:Date; b=iVh5B8Z8mYi2F+yFrEnFNBgN90PX+uWqqUzwT9otEuUTJttR0PQqFM7hRxgsaQl/p0qgGY9a6lhiXuvzid9jmog2RC8pBk5yEfCUlCGE413IkFeoG9DpcxVtSIqyV+fmlPzgA8Q1D4s6CwlT+rT4tmTLhN+QEi2Vv8/0N/oTPJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezvf2HXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezvf2HXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10C7C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767902633;
	bh=/HSTeGbrvpkOBqiEyoeENIlE4Aeqnqhi7kK9BtONN84=;
	h=To:Subject:From:Date:From;
	b=ezvf2HXbeoYYktTwCnQOrmX4E9aLks543cgYDzwtK2WtxeK4LSgBhudnSukZLKbdt
	 5KlpFe9Gbf9Lk6xoGAGyNQjOSI+FRptKS8HclU9fb3okagUg5LRYnzFLgGxJV+CrTo
	 i3CrDR/rkTQim0y/664yEpxnz5k9xBo8eapWgOsrBVEQnrQGG+gCheUyAo52SQS8Ul
	 d+5kuBBO8RF9WK0N643Rw3VCOMSXI27WunOHQ0fo2YsU8M3h1IXzNNK2Zb7NucvmHp
	 a+JjVffYV52416GvhOYSgQjeWHd6WJttj2/mm+Wmw8jggXgUw2JQe6OPgQzvGYMuxe
	 d+rL1zYpaB1oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E2D1D48A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790263358.25084.8259205101420822873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0776e0f03bf0f1ee83d0f9d68d6e0a2c99a85167f936db80cda52d8006416e
Date: Thu, 08 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767902633
