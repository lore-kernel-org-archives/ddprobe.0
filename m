Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479401DC9A7
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742408394; cv=none; b=hPI1xPggIabBbFbpBTZ1jIlp/eK6jJiADVFFlasajQiFPEUJhVpDli+x3+Ip+Tu7eeIftQ8FVkuNGk2V9gKVkzRADmOPO5TZplTJhvHwYDJ7UXB4YI17prMJHIP14OeYchEk72HtVWvt9LfE0OGDxh15eTfUwe6gEX6fAKzlKHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742408394; c=relaxed/simple;
	bh=vsG2vnAFomzfvfmCBfVOLh4Eje7DgUOzz9hC30HoC3w=;
	h=To:Subject:From:Message-Id:Date; b=q/OPuQCVjYs/RBr6KycZYxspyD1z7GkzHb5h/M1RUSXxocHZZ9kS7kIlZUudFSG2aqFgl9+/5U4gwwc9ew2oZm+0XSQpBK17xUs6SSsmL2wuvpesDkjAPWm4WxqhNFkwqkgOIH2vZG7li+w0eBNCYaqEFXfgzlU9UWWjcsvD8eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzEXq718; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzEXq718"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AC8C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742408393;
	bh=vsG2vnAFomzfvfmCBfVOLh4Eje7DgUOzz9hC30HoC3w=;
	h=To:Subject:From:Date:From;
	b=KzEXq7188Nm2Imxwa3NqkUPMK5W1HXRMgWn3WBugzgjhFDDaIv1SoxCp1htm3k5Q/
	 NPq0SvmkqOoS9+YRYmwepXpPhFJ0aojFyrQrdhoipCEVbSgWcnTUPMorzvU8DL51CX
	 2vauoG56Ko66Zjn5UsyUQwWN+rMpxnlZF2pxPpBKc7fun9IjLb+mEKZYkuC7psnrD6
	 AaRfkh7fGVhcAtgo5QYFCfur8OpDA33QFbV37TC7W0FbahE6Lux3ijF7CPkG0v9LFY
	 ossmZru9cxfutLLI9tPVwQcjRQ0j87Hs3pwDV4naSBnymR14wONQ+Qvj2Gxv7yIBgJ
	 48OBa16y4vG1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B282FC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174240839368.23343.7867753817648349003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f34252e63d46468ae476c3417f943837f1c854750c053bc62c25afe7789ccd
Date: Wed, 19 Mar 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742408393
