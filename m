Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF631F92E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774764294; cv=none; b=dvhtX5ErbOMPYiXyMIlDjWjiHspL9WD+O8gWp65D1BK77xUtVgNPIUoVP+Njc0YTk7i1TTABtvZRNR9Nz5UCRIPxQuxw9G5/ZWB1A7DvrGJWUgH+133cHT+isp96vDqpnAP/hZxmQGMB8GqOJXtqn/7bg66KT0IvTLo2t1eR51o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774764294; c=relaxed/simple;
	bh=TIoctIhC19hOPNsau6NxYC/ESPuYMuTBp1BP6VxwkeU=;
	h=To:Subject:From:Message-Id:Date; b=sl2xLEq14kbn9eDnpON/z4CkB4LmctPyvnwuqvk4chcq/hKvJTtAqwTz2lCwcQ/JbL97JLajoeVSfo+NZ+qcFmyHHRApwCUfwQdjYPHAVijwfk3EjAKxnTBSxOGpHZuRmpo4jGuot5tBTIfR6EuJvajf4F7ONkb0y5E/mYUDNXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJ6Uew/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJ6Uew/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96B0C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774764293;
	bh=TIoctIhC19hOPNsau6NxYC/ESPuYMuTBp1BP6VxwkeU=;
	h=To:Subject:From:Date:From;
	b=OJ6Uew/RkSsE7sE/bASOe14VO41azkr+MFRlX3JKMrkg3YlNTl9TAAD2Vms+mmzoQ
	 9rqXKTKqj79wcsu5BBi7ps58YXZ9xSx9uoNN4BymQI/Ow2arkVyLByl8wgP1loNDFh
	 Tw4aYoOFOXKsWaqZYWDRkpuEm7fv5ESxjYqgYv4qbZ63DuBfDXwYRY0ClgJjkPnkZ/
	 FMNOKCfZwvmdFb2c7dCQMpwEhmYD2e/aZNK1GEJHZH4speJU570WfbsGx8PWLHx/RN
	 FK9F1WTLMsrAOFgBPTqP3KZKMlY1rWaDmrdMMB06FV2CY/GDNTRw3asSzJykSrDEKC
	 kj/1PJUgIDXgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FBEF3D5E5
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476429358.17150.2320940135729567356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 123864e73209c9848f189035af824be6e1858dbe72ee4be4edc091857d3c7c57
Date: Sun, 29 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774764293
