Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496E540B102
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784648914; cv=none; b=RjF+/VVSvYxJ/FU7JsWjq5vMf3gQij+P9XvD8NfOZQPON2ikIAnkJQpPur5A0lH92ZMRAdsjalOyWEtPJiWT+LW2vu3Y+3wh0q6RiDMRu4dg9pswNkE2rGjyNEocCljQ6t49ih8T71tVV6HRrN8YuqWCrkbLFFD6yzTGbctx/TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784648914; c=relaxed/simple;
	bh=o5gGn+z61gsWCBfnZBB9nETn0796kDwXVYGC8eEGWvw=;
	h=To:Subject:From:Message-Id:Date; b=MjlyvG9lTunIyulsBI6Y1kVmwRabT8ynmR4lWKTqwTYw+eH1EUO7WugquWbYgnMxkb+zLuJsyZju3jHg5I+8nrbNALhnatuRsJT3NGCS9R6d7281sJx9m18fwGaslR0NuI3ilm0bSANCOABgIxDcWtirbQE5xrBoh5TOznmwsb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+tIMKPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+tIMKPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4FAC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784648913;
	bh=o5gGn+z61gsWCBfnZBB9nETn0796kDwXVYGC8eEGWvw=;
	h=To:Subject:From:Date:From;
	b=f+tIMKPxL2fZh/TOCKHIc/UrtYnHchDVN1pn6rgTm/W58F1Zb4/q9VMsUVIZBpxNE
	 oO7EHQbsT5MBvAsFHxqdO7yV1c5UP6jvB297qLa5m/dgMpeEZj1SVxXjVoHd+rPvBE
	 FKtsxhFZ6KMEdzEs0o05Yjmz+U/FxGo2yAzeEhUj8EIYYT7bPCEiq1xq96vJ0XzfI2
	 6Lg7fN0fHN3mFBBGMmz1ZqgMsxK7VlYTNrhf+l8KMRVgX5SnzkxcpA5G6o/8xCHvgb
	 IOFAQB42PdLYTrIXHU93UmxFymr+C6nTNql4QHdBhZa2gT/gwQOnciK1eoQuVceGtP
	 1VvrCvXseZYrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB22FC44532
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464891369.30947.11157871233611333748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be87eb575e79f834d91196fb4616b11fb800e61343c5d293f0ea7ad36f046b8c
Date: Tue, 21 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784648913
