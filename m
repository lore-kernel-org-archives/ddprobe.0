Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F993AE1A8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782248794; cv=none; b=pFRbNWjsLui5xShMhCcawSMVbwzSJ6JJMMqCfvplM61uO/SIFPCNbQ5DDHUxorkNxfPbAAJgIvRe8WBNKVy/ytsptgMslMbL7YVIG/LLwlrMm1Zc/lka2J7uFHa/HArTgQGnuqWlmmJGGQg0A2Q0kFfq3SPqVFVDOndYYdf/oTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782248794; c=relaxed/simple;
	bh=SgyGtGqHqP7KJyDuKrHE3MH9gWtPayQbWY7IoUAQlUo=;
	h=To:Subject:From:Message-Id:Date; b=fI0H3YlUoEwZT3xSF0rGFJmfff//LSw+XgKGS3zgdzRzt1ZVHx7dZHnCjuGHzx4WLRtnAu7SnqPUuabXISyDqyg6F+iCQcY3aorZiToQMNvZbfuqIr31oDsaf2dIWgRwioaMfJeEXday9OOgfYJq2h0QxlEu7bRwLXE+Ak1Ls1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPC6OsI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPC6OsI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C259C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782248794;
	bh=SgyGtGqHqP7KJyDuKrHE3MH9gWtPayQbWY7IoUAQlUo=;
	h=To:Subject:From:Date:From;
	b=kPC6OsI3QLTJ2hAMPo3dkp86nMxWjnuRFlwxu4PoMLQ0L0HlOrHeix/Y7NTgjGXfV
	 oeIbJM6hDT/U3nN5bGOUIjMrnh3nilDW/oOw6Vebd8oh1MaACrY3y9QIEeqeK5ZBAZ
	 +dVJcD/VaeW0TClG7GGtIoUhZerlaQjC9EitqrnWCb2aEhxjrT5vk1BxqJnwM8RGbf
	 CUYAKXSeCmTLoznQsIcKhCkwDV6650z+IvK8BA5DVson4lxfc39isoeTurl5PHt+tD
	 CMAACurduaJ6O6Qp6YvJO/sgITn7LiB4ztopamvRHdgg4R1VZz1bNbMEF10QrcGTDS
	 WnmKTTSyMkiXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE2D9CDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224879379.19502.3998906963354298274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3606af56aee162cd94b6ad28ea8358ac308af1d4d30ee487228ff8a333cab6
Date: Tue, 23 Jun 2026 21:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782248793
