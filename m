Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE301B85EC
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727185554; cv=none; b=ou/h4XZM0uXoLnCShJi01+CT6SU3NxBzxTeD52gk+i9wJiyWVSphXyx+E9RaCqz9QccqxQMY3Ac4Hk6vu4SiTRWfMZs4fFUUvTOBjHG5qft0iro9jLNZR5ukQZxOhIQCi0Smyqwq2XQMgYu4w2P2cyRv/4RqYt+XP3ypzQn8PEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727185554; c=relaxed/simple;
	bh=TdPlLhMCg2OuniIyjhhbl+JIi7kWw2lQ1w0r4Lun3wk=;
	h=To:Subject:From:Message-Id:Date; b=r42ocTpQUGggo/RM4hTIky2sYj3s6bzFlQuFhs8yl1WNbZot/cT5iaTIgBKSz/7s51IWAEwjEjSGwAb0bCLXY1bMLWOhkKMg8UR0vb58covA2/T5DYMfVY0IZGuvcoZZa5RMsMnJ6QydTIUCHyziPNnd01CBSQokO+S9iiJEWuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fqgqlhj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fqgqlhj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1864C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727185553;
	bh=TdPlLhMCg2OuniIyjhhbl+JIi7kWw2lQ1w0r4Lun3wk=;
	h=To:Subject:From:Date:From;
	b=Fqgqlhj8GXbxLLFScfkJrs10gtpBYEMQDl6RtHskIwwfZQVax+rvH3FlDIqiDEFuX
	 b97xcWTnaR97031SBwsueqg3qunGKUj2eCxnbp6NM/rqGxsbzaIWdvJSlGg5bwlpJr
	 i2zSGsBVFBcgkNEp03TMRjzCVe5fEwEXtW5Ie8bBs+utiiwyYDSTt0EdytX6XHLddE
	 3X8A8atqg3pnlAxUC77yZ6oE+S4NMDTVuzs9di13ByI9uMvMDu3lDSlYBxkEERQbcI
	 t3inyjS1AJVU2+5jwr55yVd434c42yRzS1nY4zKpH1fP6/8Rg0ZLUnuosRGOBTVEoI
	 PdJ5hePFIKRFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2B1CF9C6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172718555364.17827.15932073821821715848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 723fc875c0b0709c78aaaff67d3ec76704a645cd9877c4afd0292b65c87fa875
Date: Tue, 24 Sep 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727185553
