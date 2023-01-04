Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F987F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88794C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672798887;
	bh=KpLVYBktPmS3UJiSxtt2nbQxg21l6lkbfED+F1NgkVk=;
	h=To:Subject:From:Date:From;
	b=eOs+rwTQLDBAyTg3AYFMqMUXQgo6e7A1UcLRAO2/Bwt5iwijtgFpSDROhPQq69D6u
	 y9cqMNWW7ykq/42ZUjrilSYuwTP+b8gzfsp6vmwY/MfDVd0zFV8MpnElQQALLQJz5B
	 FuYAaKX1FWSAXMMEpJZqx/JWYzEcppMy8YDHYR+KaUCLGRguRL4NVFGm1jZ2G9PbFJ
	 Gto+C/mlGdb1p2pnLkl2F8C90jWVZvjgbiWZ1RrXs/7Gh4SI87XyQ0FW86SoXvruQ9
	 8l3c/qRm3vT8W9YAujjETWTgPs6gsyWAwqEdHO33lPV8S3iwU0T93W1kJbQB2QReyl
	 UdKBay6rsxwXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BEA7C4708D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167279888743.14076.534831243605841928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8048f882bf107fe412de39e8718ed338c84220bd6e660e999f637e1eaec182
Date: Wed, 04 Jan 2023 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672798887
