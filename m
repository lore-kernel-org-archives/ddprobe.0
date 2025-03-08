Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465052563
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741394934; cv=none; b=ZvGudWutMVsSXnNh4mrM1nVnVz+F3n4ZslrGbSSt2eDCzE1JFMzwR1hu0N2lECuotMn96fTfTUgjAoCljvgVf4Cw98dlGw4EBcI6b9VyiZLnCsl/jdJDgqIlSL+u6wwx/GUcrCB/dMwhho5v2VmkXaSMEkEu1mOwfpwuavOH3D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741394934; c=relaxed/simple;
	bh=z1BwWIfOOl5hTTqT2tP+RwJqnRkImofkO0b+GFbVWfw=;
	h=To:Subject:From:Message-Id:Date; b=PQJcGjppZBj3TkuLHDC+dnKyC7YT07OQvI4TvEozOZkW3XN4CXqnst1X4b2THGY6Thu2Jy5UKSxo2X/Y2m+LXaAC0viKwFetNSwBIsH1uk848IdPUjF9zL+36wRQXRb+etMp/oXbAjOY52KKTrZgE3nNqrjYtVjypAXWXn/b3wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Am0IXZQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Am0IXZQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2472C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741394933;
	bh=z1BwWIfOOl5hTTqT2tP+RwJqnRkImofkO0b+GFbVWfw=;
	h=To:Subject:From:Date:From;
	b=Am0IXZQ0/jm9mY+ph7x2xto3Ii7E7of1wtRuQEzJLMVctz0CCUItMaJKO2Gy/3SnF
	 J8U9N+EQ1SLBNTI40DglDEb2689nm+4skOLAh98/IGVNR+R4WlySVNlz/SMgynVf7T
	 id8MBwogzsNoZrdhaIy+nv5ga/aC9u6/3tQs1hF5wS4HtUYPBOnrro/R+iSO1AEIMs
	 N1oGbKdJRwU91MVVQu/Q6X/QGLL3QTZZF/n7LewU5DGkqE47n9FqSrzh14OdCBwlhc
	 PAxksn1HkGliJDYmFSSDuRh0Fh3GyYT1diNI3KuYxoBS5iC/YFd9Vica77Kgyoem8V
	 5hCIUtqP+etDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A074DC28B28
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174139493364.9406.3568271051454716549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dbe479ed650b16c1e61840ddc2b0c50ceaec2293b77fad46e032a2b6068adc4
Date: Sat, 08 Mar 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741394933
