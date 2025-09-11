Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F15F47F4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757614795; cv=none; b=VfTNVX189Hv+8Z4Ec3sWojFROt0BLvCVUWueB6aMdIITN2dz96TSnOGuEb3P8b/Z2GOG9D9EsNRl4PbmLE+pnXHeHRT2ZqcFVz7GICByZbHctmC7zkaMVzVotE0DFLoUm963EM6ZBJrKLVX7ni8sjzdUdmwLr8K7iNpFUMQLMwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757614795; c=relaxed/simple;
	bh=bzRxq0+XWjSuAZ6y6Vx9FJgGiKh5g0D9j0Zl8iqqtto=;
	h=To:Subject:From:Message-Id:Date; b=qni6T6Zfy+zZ94j+z/A+g2H6EKX4rNI8dsktvPANPTmkk5+i+77G8i7H6ZEi/DcRyUFpqnj7rUwzxDsuuKQ1WmNGWlbFre5R8dc00vbKgXrHq7RYi3uwURYkA8aiqEr7m1lx1TYexhsAaEUHuy4+YW0mGHFMYWiLEmeoqW6qpLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URvghvby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URvghvby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF72C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757614793;
	bh=bzRxq0+XWjSuAZ6y6Vx9FJgGiKh5g0D9j0Zl8iqqtto=;
	h=To:Subject:From:Date:From;
	b=URvghvbyRFA7yRiKwHvfJKiBclITzSmr3MWlVGk6Lz1B/awztLAIHE/2OQoNQG/vX
	 VZQ046oJE5+MvCluyOI6G4sblK4yAtmk04gxyIMyDvXNRnNa26iOX72lTyJ1qgVreS
	 t4g1WE2mp03yFbiFxQBqhRnviOI+Rv7jBBkpu9R2jF9mufKxMlIXDPohmYZTvLcxJv
	 86QPkfT9shsPe9Hj+Cyc07z5kECzBBf3JyizF+TRqwdlHnKT1XnJ5S9Zht1HSbM4kE
	 67cPlLeSRKTGCGhos7mHjt7J00p89PTEWLkg19V3p/5Ia+wVSXw0MX7Nk/VR6XrwEJ
	 hGnVN482E6zHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F2CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761479358.30944.6148175626175642290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e971f8056ddd142a6208b66251195c64c0be35b1ecaf1d406fde22b884568cdb
Date: Thu, 11 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757614793
