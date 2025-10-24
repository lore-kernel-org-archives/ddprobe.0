Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358732512F5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761331794; cv=none; b=YbVTJ1JVTyzmt4uxNGQH02B5poFCq4UhfW6Y4tMqpPo2Ufnbknyh5NNQT6bxWvg2o8Bp/MjpBvxB4b39xP3A917Cz6SZ7g2y9N1b0JXDLlNxzW/hCJOwuS7OVE0Uixx7aK5DBjwoc5n7FefNEMcrFe/xiRWW2AuCN3YVOzLFC04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761331794; c=relaxed/simple;
	bh=iqIZePMxXRo2nLzFx6hpTlQ18FFAliJ3cpLTJZmiXt0=;
	h=To:Subject:From:Message-Id:Date; b=hzNojsX4lO/wDCdSv9+PHnttAk5kJLUL2wWdjNe5mRSV4U33TDmc0cc8ghtNGlQx5pLpHAOxkKb5V+uKCk4QTriytwiI1ldkRRrVyEWktO0n6diD2rp12WH96wU4dwtTSxS4vucM9L4p3NBWyWj7tIZj3rrBi3UbTIJbKp9ECuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6kWneHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6kWneHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A341FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761331793;
	bh=iqIZePMxXRo2nLzFx6hpTlQ18FFAliJ3cpLTJZmiXt0=;
	h=To:Subject:From:Date:From;
	b=a6kWneHy4BDLAI2ZBjgdWZ0WFCvJAE/PTqt3I/otilRMsLq/hoUCCcqQgPwVeq6jU
	 kGuvVTD9HAmx74K7d3SldiD2pNlC0VvK4mbh2Gh/aCihqqfy2z/qdxq1Wktbwu8mds
	 Z0L7j5jzYVJ9xLeclBYxcNccRAzZLg2HV/WwZqbrINBopJ5CRhpk07FQJ8l00nrq56
	 N7G+FTQriP7VTYDxg+r9Js7a5ZaiHxZOTQ7V5yxbTz/roiUVI309In6kAKQBt4SQPw
	 fhe2i4NgG7HfwHPAMmXbEGOc0sxXxIJuGQEh3qOYnW61CEKZCx+byPdQwSoxUWnO46
	 3quCk93FBPbsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9447DCCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133179357.11910.12987549011075547744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90454bb31fe9c5b39025735dd77d752310f358b448db96297612fcbdbe5e0bd
Date: Fri, 24 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761331793
