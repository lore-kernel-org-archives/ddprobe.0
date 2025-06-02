Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7612C3259
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748890194; cv=none; b=DWDB2MW1CTLTNaXwAL76g4dQ811ezGt7AHypjsNV2Q9LCx0fcsOf2AkLMApzJCy5/AeO5g6cITCBJ8oHa0bjHsnkyzdfXcPy6L3FWDSGYaovYKoAeoF1NYJYQj6uaoH/NuAMT0b2IHfk+M5P3FD+wNMPZ3lQXvRl/kU/QGACPVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748890194; c=relaxed/simple;
	bh=AWHfSk0jllT02/z/f9i7jZiVYN/anSW4lrcEGkIWIBo=;
	h=To:Subject:From:Message-Id:Date; b=fye08XGQ8OIZeWyErbuf1wsDIuhCH+xBD7GT8SilgGZ5c1tdeXkU7SGBtjEC6muLfdmbYQ9WVl+jRbb/ngiV2qScWBMt8OJ6bZzIXMak+atHNCsqfhHjmvJM3zARteFsOwpS9umz1SdsKe+uxRraYyA8GOs02admTeNRf+50azM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZhtkQgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZhtkQgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A5CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748890193;
	bh=AWHfSk0jllT02/z/f9i7jZiVYN/anSW4lrcEGkIWIBo=;
	h=To:Subject:From:Date:From;
	b=pZhtkQgUqyLQqNBqE+d1YB/v2fgZ1nfIyz3u2U9HDGnF7IrP6INm1nZxt4kMU1vaf
	 bEhElBK4fwUm+nxbpp0J0rKbgUudyAFEq953cqJ3HdM3SCWBXLx9y9FCGOwlvBLeqM
	 yd0ci8HaqYCiCgYrsj9I3Pcvjw/eSGCRfJlpcYzKFiWv/YEiD2qxRIZ2NvBh3sluwh
	 +833SQvJ9+VuuDYINDxOcFeY+mEhxAv4/EApgSLrfXLIKk7tMKWdF+FrqTr1Hs+JZR
	 T5vBEMOowZH12dq8pINuApbmYKmMZ0NIysopMfLG1qC+w9CNgFoGQX4J2bhWUa+YcG
	 9ULrO3qbslo4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF99C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889019363.32744.13246486731655670630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a054e256abf92fa926b940440bd30fa0609255ee0c0257aa5a00b76e0843d7fa
Date: Mon, 02 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748890193
