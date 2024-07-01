Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFB38289A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719828863; cv=none; b=UDRGbUm+Qa8GFjILGR5sVQ10uJ3+djZZ+5YkE1/AUGzVzkI7aVzPIZgLwOVvJHt388+a+5JvoMkF/iijqqVpvSkX4sLvfrUxLAkroIPIq+z+i6f/4BCO3LgP+z870kee79rf1Z6WTAS8jozRVOuIfSLr/v2Hmo2dK9lB2+7EECw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719828863; c=relaxed/simple;
	bh=YADSytGnda8v6yPnzHsHl7+g/AanTcaCVyp7jYh8uPs=;
	h=To:Subject:From:Message-Id:Date; b=oVKswbfatJEEUmBYE7oodgQrROBaMIPLV5O58GZkwXKYnF3o3HwwC29sRZ+jkHUUQ7XphYvx8/iXqrsvem38msHHr3SWw1PZjwI9HGnooicx4ou7KzN4sSR0HzPh6cbMMCdeqqv+F2baTyKr3NmagwGBWcTIGK7kjJsQJ4jVvnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tt/FDt9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tt/FDt9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2AF5C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719828862;
	bh=YADSytGnda8v6yPnzHsHl7+g/AanTcaCVyp7jYh8uPs=;
	h=To:Subject:From:Date:From;
	b=tt/FDt9OWBtDSbfB7ZHHvZWtdi/sHDnXmcyvvj1ojhOjHtJ/37bKOjsvcJ3s6Rwsi
	 pLXC1EaRsZnfw0Hu6VdKmr/ordVNaZIsACIcUNGjxrd9Xz0uffpc7yWmWpUxmNi/Vy
	 uUj+oJ8LQuIXI2bz5eK1WEkqQwxJ2QIVMJTVZ11SQ+Opw7YY+JUSK4+iJIfawuG4R0
	 itPCeJ2BHF+WPt4bENqE/L2guz65jiZWH8Ino3/RkGxDsrlo6QHaEWmsEUXbDq71he
	 pwNjCaoZYKCoZvkeFpJpKmASh8humBYsHYKgqDcM3oHk+HlGqEbmnzsLN2UEHIa2mK
	 kxte2R0G63KhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBCCEC30653
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982886280.27050.16418786156761131787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 208f6743870e71af369ea80e39e928b9e44a4e868c163a0ad3e1743e46f08914
Date: Mon, 01 Jul 2024 10:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719828862
