Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE0BD26D
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742056794; cv=none; b=tCKm/pWdaLx3f9m7pq1rmGleLj4Jorxu0rHVAJ6nkg1znqusB9kns2nPIyi3FngxGTeHGKxyr7qce/qhTKkRGdl4aBGw82P/REAbiflp2Mq4KLMoxtqkmyiLOaPtqj1hhPEsNj+0ILrFzM+TFHGR2pSx8Lijgr8jsvIwsNAj/xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742056794; c=relaxed/simple;
	bh=XO6TK+nwiKzsT+6IjeQO6jtFGxk4fizvqGgemh81NHU=;
	h=To:Subject:From:Message-Id:Date; b=cykIxjb+gS5CrBlyisGyTd1ZAEtmhWFLj/T1pbnA+v3pHX6n+TpkkO2aVrysD4zw+k0Fr9AUfSnQkcXokwvXOgO2n2i5QjDvL6qSBxTW9ldLvAuFUtiJ0ZlV7doRV7mjl5jSdQ7aN0aU2DhMhEZiWGFUDp2SVUaj11rt0tCOq/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eqqcs3NX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eqqcs3NX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3250C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742056793;
	bh=XO6TK+nwiKzsT+6IjeQO6jtFGxk4fizvqGgemh81NHU=;
	h=To:Subject:From:Date:From;
	b=Eqqcs3NXjOqrf98HesFQnZkjBOSp2qHN3pdP3ZXYaQ0GKAXBlcSHhBhcJQcblYtY9
	 g5r/Mz8PHe4PpnMwEzubBO254zdfQ9apxmjhRePZc7kt6Vq/u78Sh7U9PtagFTYA0e
	 GscMAPQlI3KMY/qz7/Rx1mJSib+rTZlTk4TdJ63zU33x6Sg1FhEhZ/8Y57q2dg9KfG
	 W6YU7c8uICB8SNhF5nNbEJ/exDNJK69ePLYTM876v5rrZB3bQ9OP0I5T2ln4+JB5ds
	 UDoNMB8FFUWdVCSs56paJ9G01GGnsXbDW1vkpUK/veLzcOXTKsqqrur06qrlJCRENK
	 sfzBTvGOiNhCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E9BC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174205679360.7746.5272591375587769329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af36eb03afa346aea14c89dfa0eb7ee427a3498519d7f733c2280d6b1fc36c71
Date: Sat, 15 Mar 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742056793
