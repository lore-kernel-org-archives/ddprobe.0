Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91293D75
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A3BBC43470
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665517853;
	bh=hjB7MP7EuLPkE+HhD6eGZ6bJnnf5qtYHbN6tQxdzfyk=;
	h=To:Subject:From:Date:From;
	b=nIf+LgEjr56zztWPxfPmpvCvYhls5w0zFq4uRxaduUsuuzsta2D6SltYrAe1tmDTQ
	 +/tPZ/HcLeXoWSe69VA7+mNYdHjzMpfZWwOR0AXhO+drGp5qIk4NNRmpsZffjLyiI7
	 IT6tZpL7PFFPb7PM4nH5U2P0MgBoJ31hGpR/cngFK70BWMph7VAfOS0CQYBUJRe+oo
	 QsfOR3I8CeOZtvDMPS0D1+Hr0HepbEJbGKLOj5D08A194WhuJ3zjAROgxVRTUjccoz
	 q1Q+Cw5jrzBqttrwRYUHTEvmYsE+UcqJbhDK8TffjHBNXz6kgLD9g+rOFJxHnYp+ZR
	 AeisX1j+ZGuFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75577C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166551785347.24132.9261616914898160760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43440e2635beaaa2879c002f0c076b933a844ec9b69fa05c825f042cb6be31c3
Date: Tue, 11 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665517853
