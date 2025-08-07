Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CC71A23B0
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754579394; cv=none; b=NrNCfbUYswO8E36mmavm2hdtjAb6LC6vbB+a7oe+G7W9KwJb+7Nn87WUyQ2GBfRDAWSUboadomq8pcG006leDBiq96FE7yVOqYLwb8ryD93ta0vOUz7nT8D1+T4GHCuPHRJQ7ePg2T/rfwWQyVSo7Boi8+C/3tbgi5TKH7q29yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754579394; c=relaxed/simple;
	bh=/SX+ixL8DPWDlrJzi8OGtMRqPZPoXXT8TwrVqhx+sJ8=;
	h=To:Subject:From:Message-Id:Date; b=BQPiROiZGAEMxx/WuGT7purPiOX56TmS1yDnbwamj7/mg0GgLZ02onFvFcDtrL3NDDShDAj8bHCwI7LW4W7kWyRZCD2+vvO/tRo/yGHM4sxDCgo+HuT8nhrrLWeQF8fPkTk7zDFwPiZwG81a8yZCuUSUvbF3eWc0eFZPyrAOXPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgBmrIBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgBmrIBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8567C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754579393;
	bh=/SX+ixL8DPWDlrJzi8OGtMRqPZPoXXT8TwrVqhx+sJ8=;
	h=To:Subject:From:Date:From;
	b=GgBmrIBABLEsWPR1p6USiINI8HfrvYVrLD3WP/UJmcidHN3iFZTW4GpWGLkxpSTF3
	 Pv1sJSWeTsJj0AXw1SR1N2I+uV13XYw8PIrdp7OXmVMPjd9aaWco0J2i6lDDMJhW1Q
	 st/OQrQygLaUK2Rj6Wl4+lAg1tKbGbEM46PzxC2aIY7pm3hRGdTCLkiTHP/dqYc4ps
	 32nqqIwtL+nKX7MonqjIBDA+6p0m5lJWEhGnT0gEj5E9E2ey3bpdvOdmQkvaMMfaiG
	 T1lpm3L2TRtMucdnqbK0LqivhWCUmhm9dD9qPhWM5nSQ0qiK3+7bbEmsME2at0x/iT
	 8K8S+/lCa2NAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95876C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457939360.23065.12767482171750503225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd33487ca3912ffc8c1f676ccfaf418d3619e7c8e34397621f28a367fe5570ad
Date: Thu, 07 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754579393
