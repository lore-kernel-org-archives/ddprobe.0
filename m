Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDBF165F1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763690514; cv=none; b=CBjhKjujQxi5FmegFCyh0j8d3P2qKGfvHM/FlyhKFBtDthJ/W6IWwg+huJXUzzaBIjIpDU0WW3+y/CHOddQSfsHjWzFJZ5K01ywzifhDz7OxVSQHlQtZ8hud1I0vd3+S/4vF5nj00Wjdod3Sg2WtLiu1rsKTbo1QcyebF2+2vLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763690514; c=relaxed/simple;
	bh=ym7fUccRmlhLoJ4LoCwUDPEyiq0xuU8wC/gAgBNX/FU=;
	h=To:Subject:From:Message-Id:Date; b=QAmpPA3R3dZfrSgnI8TPxMQg/6uEO0oykRjxfgD4xXCyBu6Vpq5YmnaLich/3SaLBWtBcy+zhJ2I7ucU+oiATO4vqK55vi8rgzKSiyvWVERoF9Lb8Cv325dFM7BQ8BsXGOZoCKOhum7zGK//aGKdOobOa3njYP9/Qc9BKkrOqsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHd1DLyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHd1DLyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A33C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763690513;
	bh=ym7fUccRmlhLoJ4LoCwUDPEyiq0xuU8wC/gAgBNX/FU=;
	h=To:Subject:From:Date:From;
	b=kHd1DLyYuQfNjcooAlZWjQwtptWQuzaRg6AqAqSZ6zb4DjxzkBJy04OIrslUicq1+
	 DCvPUw3LJeymzW7jeVw0Raznr3wmZ8LNWpoAZc5VUpaM/YCKieJJIFwDUCMgR+HFmy
	 ppk1lYqxJC/mbFyOK84UlzijP4NarMuEOWwFtGQqSF8zgUM7c1awUJzTN/OJATYQUJ
	 dM+mTNQbn1E1p5da53NsjIKuaE0XbQiCLWdN+nk8O4h+6//oZfv3nEC5A2laJrxm+E
	 i+JmXSFtJA6lfKFKHdMtk5ffE31QV6ARSiCzWe0hY6iPyB7mYJdDDtZeZmB+23lOeV
	 C4RycEwx5rcWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92314CFA444
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369051358.8860.6990664392166623870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a23e0dbfffa72f0fcaf23b596fdafef2efedb9a477ac16eab10d1a6cda925b6
Date: Fri, 21 Nov 2025 02:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763690513
