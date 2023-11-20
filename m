Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1421B3B285
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+at9iBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 849C1C433CA
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700522296;
	bh=cSUvDxwijs/4vzik4nJvlocMb15WhkZWv3zy33v4wJw=;
	h=To:Subject:From:Date:From;
	b=t+at9iBejoq+VXv6ltj/W4EqRXG5o9yIZ6U8I+o1XKKbNNMoOMx0R2OpK5CbpfPHc
	 RA7rUBtmOWTDsjdT+cm42WjZKnZR4YPO+DraX/twT0NAVmJVNRMy374sr1JmN5l1sD
	 dAaNkztyOIOd7JTgvDBHU2X24A1/rcimYEY6jK5WZrIfpE+rSG2bG9RcaRkXDewhoz
	 m/ZqJhNFIFK5hYssjFA6JQuyRxKRttGlGWnAKoopnKppV3m7VfMhLTOJjrXU5kgKNb
	 GuLfLTui0tz7N+epX8GjnuhV076OnFQfAlEjbsOBa5WHi0Xq+vPDTKbmrRn7Q0bN9t
	 j2MTW2/5a29yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70BBAC2BB3F
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170052229644.8371.17588673319243874741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3bcfc21a289d00e55eaff35c67456b94e4664cf72d530a5998fddbe955834ab
Date: Mon, 20 Nov 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700522296
