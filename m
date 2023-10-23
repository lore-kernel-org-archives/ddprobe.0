Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EAF1848
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="camd+ZbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89E52C433C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698035296;
	bh=5HnBV2amDlv9hCTFTmcDRN0CUDdSd7vHVxEKD0mWTdU=;
	h=To:Subject:From:Date:From;
	b=camd+ZbKpHm3PNhKJr8u7y2vwwwIAOG4zVG4Qf5sCQqapchJIVJqZ9e4CK5zbFOow
	 Wkl/RGltibNFfGdTgY/6vsw/gqQb6ZennxvANiWjfqjUqwXC6QKVIWks4hvUjq6n/7
	 QxOpF2n8eMK0hc8MJKX2F9Ofh8KTHCB0dyldxmrCkjadeNp6xs40p4zD4UJUBkkWgO
	 VmbC9uEO9q3pJTvUFufd165Xvh27jiHUCvZsBXQR0ggrhvVHdUypEEPE2Nm3RQ776w
	 6VHKyJ7kkmnriQuhWGwBwaOGp/Q7J2WgacajjC7eMRXAReW8ns6KP5J69bU39Q6oho
	 j2wigU3ijpL+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69163CDB474
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169803529642.3461.11873805984656292853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8087ea37f972ce137d40134a514cc72f0e53472516494e758891eec36e063b3
Date: Mon, 23 Oct 2023 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698035296
