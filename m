Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D827D15A85A
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743236993; cv=none; b=WL9Okwn3HHLA4w6zOI9XdrDhRyrBqlrLkuVy5TRYsP8PJFLwuCQUvCPwesfVmArp8KstzUANU3VplhVPeAf5j4xsuY2KmL8hg4m9XrY/w85y2Rswu/OrzUx5xayMyLFw1866u39w6SoFQZXFakG+qED3RkR10icm4lpKmKZeJH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743236993; c=relaxed/simple;
	bh=SpqhzIeotUbK3W2TH6gHXi2+lowAY2q5HEuj6HIW0Hc=;
	h=To:Subject:From:Message-Id:Date; b=skLxdvlumomcuqUgSG0FC9xKjFXIV1/JoVxXTwQYfQujl6IC2IcCDY/quEMz7/XmATBLpI7ZM4S8FUQ2BYl563+cJqEnChErs5tCxS4/jRq+qaNisZLv6xcnvNeKx+ThFgC33UJqryJcAoBwpauQ3TPnrRRi/v+zISP0mHAHYMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1Ww0nvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1Ww0nvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B9EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743236993;
	bh=SpqhzIeotUbK3W2TH6gHXi2+lowAY2q5HEuj6HIW0Hc=;
	h=To:Subject:From:Date:From;
	b=A1Ww0nvxg+jca+vXWysAj/T2lj+VSEuhpjk9x4grOy8KJI90pAItKFWxgldG5vQRg
	 2Hvv3s0lAhSFT2RWzYLQn0MCZSP7cTRCj/W0F4v6+bG8EsP5DDy8E7QtYy9uZTvyPS
	 VzKGdxEf3CPEi8Wz+WztDbUOFF9VYrDLu8bCdq8klP6IVoAinI6W+JgTKbPHG4Z/Gr
	 18EIeGUyLtBIPdvh0cRT5ge5T9buGTdknwWcF7NApwMFTypi6y3i/wjLfXBdKLo8Gy
	 ZRfJVDvbw4M9F11Oy4GZSmHuls+uuyFovWWX+LgfIR1KGzT/epkpXFW30hKZ9+4QU/
	 1kgq/XV8nIQ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F57DC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174323699360.17414.3998490714120552644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82af30d75bc8bd644017f8424dd78173c0d88f2054c6e2dead547cd0e118d7e1
Date: Sat, 29 Mar 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743236993
