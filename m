Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48288154C0D
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738982754; cv=none; b=TAxTyGfNsGM4QIx0jCGoYDmsgN2Yz/+vJeg6bkRXqaM/vMvnDbmzfUU6bwhB4Z/n9T1hilQzHmita9u9GuSHktmAV2xLekxFRXX+zCyc960Mn3nbVUHUw4+kO2Jie7RnocyyNWFO3OhZeMG3FjP9l3/6WzjwQGn84YUI91HG1Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738982754; c=relaxed/simple;
	bh=Q19jbAHYkrYML5YOysCJweIdY7gu385gIzlq0hI4BT0=;
	h=To:Subject:From:Message-Id:Date; b=ht/gv9P05HrkM/R6rfJBSutBzFiiJCRqUalS9hiuprcRPvQhURJVSsVQlKiCiZ9D4S85qkSIeC4wgotxWxucTSNMM+LMV2wm4dQgFeyf1j6G6OGqEA/6rsxW6nulNhldSLUpfuAh0WtEYGoUxBiqPDX3xr+4winy+NSIhd4FF8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFQSyRMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFQSyRMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BD7C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738982753;
	bh=Q19jbAHYkrYML5YOysCJweIdY7gu385gIzlq0hI4BT0=;
	h=To:Subject:From:Date:From;
	b=UFQSyRMv8G+weA2kh+yDsK9bzl5JCdFpz0/dHCNl5H3cRw4fTPmj57U+geaUjnfRn
	 3RrAW5rxx6NS4PJWvwIELQrYfacLwA6NCyOojpSqNmRl7GS+2usHlFdQpahYQFTHWM
	 zz5lTXlioaCcoHctW0Ik6dbkimP3VY6KY1mUGMMJjUXB6gEbNxjMcULNblUEI7CQWT
	 SppjQ7cd/bMe3V1mhyVT1fJZjDbrUNY+F7+1tO3OZ299SN7Lr3Brz4/NKMovH0qc8R
	 p6HFbIc0o05EhKY9L+DzTRJFeaZqK8ld3JwiYOPhUMAQ40wQMM9zy1hIQVdAPbT8uB
	 bEd/Rh8NZrodQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C603C0219E
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173898275362.1682.2654402456917597908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12a2259daa2b1cf52c91d2a149ef59657e5b465cffc7f6ea9278f43acd9c55ce
Date: Sat, 08 Feb 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738982753
