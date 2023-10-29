Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BCF3D7F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcqPNLlv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88C93C433C7
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698587296;
	bh=tMfmPk7DWCYdfPS9Rk55Fwbi2rxeY7dVBbpVKXmNV08=;
	h=To:Subject:From:Date:From;
	b=GcqPNLlvsjkFBENDTS4zsvz/W1vaqrMZsQ6zjIQ2y96rGJH+o5CJwqAG/BP0KMpRO
	 fNm2CxY/xZE5hNdSvEnRBFnh9jf2sKp20oZMQ6yVc8F231nroaNJdhwZRQ0TT0R7A1
	 F9yVW8UNiUFMR+ns1GNFZzuhH24+2/ifVMUNAJyZfHO6ykmh7ZI8j+QoqvBaUo91pi
	 4kifxNY74aXpYLoT4cs9XqQ5DV1uPj78yeJpSLTxdIVjoiA9ZdlMPFUFTC5jtky66T
	 cNj9QDivNVCiSo7SnNBIZR/63yHh8hDTB+kGc7G4viRbpJLTz1ZHJ0D1zEA4logtv2
	 lXyj0b/RgYaEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 694FDC4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169858729642.24160.1926680821769386286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd146afbca18e7d71f8a968c8e403f49126944e392e1b3e833f0a4c1010f48a
Date: Sun, 29 Oct 2023 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698587296
