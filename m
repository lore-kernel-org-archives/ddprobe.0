Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CA7155A5D
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774721694; cv=none; b=sd5aJTftTKmDN4upnqrU/baW3c4TnMtH2OT8y2uIQ6jFcOfDsohdWK+f97pWbpIPAL/ufIU3CqrZ9gob2AJK+ka3iZ5KgRPIhJukGu7zqYD67d0gE5qhat9hQW3epStFxrLMX+I3kvV0bNiP5Zn9mSaCGLKcKHYQWj6CDZF0ylM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774721694; c=relaxed/simple;
	bh=6J/KieIxyWOC95t/5e3A4RGfwXZyfqDPGr+/Kl9WgYg=;
	h=To:Subject:From:Message-Id:Date; b=WpNgJ5hyEHtCxaGdKpJV/tt4BZzerjbe6a2q8WwJ3DWgUhWjfu/xMNJ8wYjdhTPOStN5QoPf1nvOFbWqdJhjFptpZEtAbHmXTlzG8NuABmEYODo7OhieP/tedq6VXAwGldlIkQWJx/K7uZq+jX46IzbE3mVzmxnJN+MciMZH6lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXQjGkAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXQjGkAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67EAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774721693;
	bh=6J/KieIxyWOC95t/5e3A4RGfwXZyfqDPGr+/Kl9WgYg=;
	h=To:Subject:From:Date:From;
	b=jXQjGkAzCuBTl1mfxg2DGQ1/RMDjRLDrDh+Z9PR+U1XcZ8AFCDKvrkT05xLbWhXkd
	 2LuEupTv6+bKiR26+WAFccWlcJpIZDVeBZHqawvwXOG5PUpAqqgbwqbW/1/ybvH+92
	 cEM4MC4gaStu+1BDgw5zs5NtR33jCtUhP4blfzcTEaFdNftVt9FZm254OTdSh/sopX
	 MBcIS+NXLO3ps78zl+59j0dk2ZPhCWnQQ0GACYHP9DQTE6FhyjFrvRTzFIGyYUv+k9
	 Lmx8CyJdCgOZ1LbHQpGf9S5drsTX4DIwla6MnA3WccEbeCQ8LLG1kn18sK4BQvOF61
	 79TqvvwbT29tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9665210F3DF2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472169358.18941.1627515011982050588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73669782f994fe438a1c13cd7653df58411e415c9a2ca8a78fdef9e19e8be5b5
Date: Sat, 28 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774721693
