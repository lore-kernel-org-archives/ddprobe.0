Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C191DFD8B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766190234; cv=none; b=lUR+ZYiYDEeW6ChOGXGl8TFXSW4KqdL8Gv9TEXE19m4qE0xpWnzfkJ4yhQqFWtDLrg0W5Zxdo5VhYOAPCpQ3vov1WGnrs323Vm2yDa3Fhf7/W++cbr+R/FL7kOcsuMcYQKCo34fSI8vNnO3kQ44HEIQWzu303vo2YmrEyIsrMIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766190234; c=relaxed/simple;
	bh=trRW9RkoVu3fAmzWcjGuLpLhPX3/cE8j8ybG8CmyBjQ=;
	h=To:Subject:From:Message-Id:Date; b=J4nPz5cDHgehvKL1fUeHCYKBvEr+0KT+GkmHIeMbtkO+qnCGFz/iGH7Qo73ah2PbId3KXU+DcpZ3l/20IMZx/UCPV1DsUMfY4GBXp6ROSxf3lkYt2NEhsDep0Sdeoq1/4j1WKb5cLw2YhvP6AwwBimaM5yR45MUbuh2ulYYFLTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gl3r4kfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gl3r4kfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9913FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766190233;
	bh=trRW9RkoVu3fAmzWcjGuLpLhPX3/cE8j8ybG8CmyBjQ=;
	h=To:Subject:From:Date:From;
	b=Gl3r4kfXZjlmultBXnJfvl/V364q0VXAO/aWkLaBUs3Vah5dzhW+sSEL4QLohr/gi
	 0qRTpl2xLAAdDJuuGHrHUnPAeDHKVWfrgWFuL8EU3SQPOqr6GgXfGA9ZWj5t4nOpyN
	 2FtSnWKZofUKkOmkgL2J0gfgdQqW21+aKBzAAM2RKylZKosfU6qg7p+rclP/EbfbD6
	 NIVkVkLXqozpznRjQ7ieS5knI6ejF5Tn75oehOx6akrMgC/OuWN8wz7+8TYm96PoOx
	 O7HAZ5TlnbN8i42Ez5tFfou5bCR1MmZq4slw1ZydFbnRU27GwCSyuwzVh4MxkWA1+5
	 1Aecs5uqmHUJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA4E668A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619023358.13934.3999499259944364787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0851ce8567d50ba241f76ba6612fcb001071db4689e830b8c98aceb124ce7ac
Date: Sat, 20 Dec 2025 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766190233
