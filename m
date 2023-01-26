Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C87A5384
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 19:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A0AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 19:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674762185;
	bh=KSpt8otFroGlK/m2F8PJwHkI3kFWKEJjBZ32TQ3LNyE=;
	h=To:Subject:From:Date:From;
	b=RruS+1czyx3gZFykB7uBbJpAz1p7MnuoGRNQXlg7dxK3TeNZPAW1mJjHJ4I4Q7L0k
	 Sze3cYEwdsiGmLyA61tcWGPD1SMSnbU+lgz0jE8qYjtZndR/IKxYqSZ2MUGqwjRWpS
	 K5/ROqVUH40bn1vL2QyUcI51tfCXs5AOYg/hQcYRgIXvknKtlJRtg8wAsLUWJDh0jO
	 rIRrHZWAhGHwXq1InzhUKg8ox12GpqRMzC3/6/13zC+4d/CDzHFSr0Lw9DIJGbQZsq
	 APihodRCESoD6QysYqNTvQGgKi7jko3ntEJ7JLOKNaVzu0E1KWnuhhAVLC1OkwZk0B
	 +qqmzNzoXXznw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB88C54EAA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 19:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167476218576.5161.2334902945463382240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901a4090da4a15e03e3da6e89120c6b0d3207a1884e5b9f577dd52c9363074ca
Date: Thu, 26 Jan 2023 19:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674762185
