Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16E67E787
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711704497; cv=none; b=tKfM6LNq4mx09X3C1AoOdbJOiwQBLcU3480cOz9xDo4Pu6DytSTzI8CwWpuHQ1Cx1HpV5AsSmoMK4u9DHKziaQiDKeUtc03E2zObOxcb4fq9BuF17JbLekEHYjDWtboRTOqcSaxcy3/OtwmCvDt6V7ECcD+4Y7EFc0hQ/11G70I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711704497; c=relaxed/simple;
	bh=z6ORSLCQn9vpfoi0l9xNXmBYBqBLU2KWwKIhaidbLxs=;
	h=To:Subject:From:Message-Id:Date; b=kzR8l8kjzl8wNH8jrorLc837rCqZPkWiPKnW7T7J7iE3WrPPiAZsx7UliT5WCTMsILV9R7rCxQRjrf8EZxZvKOyCZ3R50vb0ok7mPUBsYQ1rYxp26bNeeBX5cccezxbV08YwIi8xm7Yo6ALj7Ru2OwYGRuwCaHMfTNr5TOyNSJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/bDR6EV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/bDR6EV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86088C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711704496;
	bh=z6ORSLCQn9vpfoi0l9xNXmBYBqBLU2KWwKIhaidbLxs=;
	h=To:Subject:From:Date:From;
	b=q/bDR6EVn6b4em0CHYEN2hnBJ0Z7RsV0Ynxod9eSr0jHoIeEQAjOXWmXTjtxuJ9RB
	 inOxj5l6Vy/APkaL+Sj1SXaWLtX9Epy+A5/uqV5UnCuWhsSDz4+4hr+aWdt8YJxz7Q
	 eBnpg1seKfkgic1WfQ+/kdjgbnb42c7qavU0meTzhgrR8wSiUhSxt3A0CQLUl0Bj3k
	 ZNbt99Qxiv+ewGf3461KE2+1YZEQZJPm24fPcugz2KGACfzuGUBNkOvnO4gP3Bm4rW
	 r4Vq0rbmeo5A48nug2si3p1VNnxZnxMsd2998pn7vuEVzdLDpb5iQT3XVh0bK9rtV/
	 yYrrYN/LoCPDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB5DCD11DD
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171170449642.12344.13764776348468758052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9478d40b5009dcaf4bda2775877ff06d2781a07641dc37e8b46be4c25100bdf
Date: Fri, 29 Mar 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711704496
