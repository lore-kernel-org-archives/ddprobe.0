Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D29129E93
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725642954; cv=none; b=Yv10HGFaAAPzP0aCPiWfy3ehfZHSGk/i7IJOSG4Eo2awqV22OJgmf5VUR480gMcQuu/5G+NoIZnlnc/+7zr5Fr6g7leHO5r0C/b56ZWQksVjWoXg8vjOhFLYpGoH19lhE7XD5oQjocveH04B8UTVv31gsdCq4+xDj/UNkfrxlZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725642954; c=relaxed/simple;
	bh=qZfVGj6CF7HM3pbSLF9FOOUvcMd7OAgKseFqjaMQFJU=;
	h=To:Subject:From:Message-Id:Date; b=sXyb4SL8tuWpY9N7ocRrnyCP6AW+8z4hHWRv0CC9HvAklT3KxtQ5MpeiJkWZQcWWO/kaZuSTMXvObIAgwb93FMRSoE/Z1veTu1Vz/gaQxJM8ZFKMSJ+G2UCPf87TPhQUzx0eZk+xgeTiqOdFZAhwij0P0QZQ9p9CtoVnl6PtU78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9+2Y/8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9+2Y/8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A82C4CEC7
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725642953;
	bh=qZfVGj6CF7HM3pbSLF9FOOUvcMd7OAgKseFqjaMQFJU=;
	h=To:Subject:From:Date:From;
	b=X9+2Y/8XIhIScJpNSuV0/JaPNuPl3hb0GNMn2BsgoXcoXm+5yEyfhykPZZwQJpMY0
	 deB7hv0J3u06027FyiwRUnjmgGexwmaq5pF3SYExQJ4UvokizUSMp3h9JwChFTW8WA
	 jvFhbC+XQ7f3cPeXM/kQdl/kWLV4uM3Jc8m14ccuOBbKFB8QT4M3xkFx3ZaEjVxlb5
	 0j/kQDrcajfeWxY7BoqySSA9VXGgbQPqIkKQ+0Uqs8EiRnYILfvxF7O96nPIiXF8UH
	 w5mOEAX1b6J350CdvnAeukIWA+gNSuQa2OLuuFawTa8VKZEEDHNu40qulHGXA9JhuK
	 m2bKUrAQyyuuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E05E6FE33
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172564295358.23844.6428269262100588465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4059b033102957fcae6ea91951820101b24f7c57662bb64d6038fa741ff9a6ad
Date: Fri, 06 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725642953
