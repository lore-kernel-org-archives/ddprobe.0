Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE83880F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86A4CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671970887;
	bh=ZxTNb1i/2f11BwAD788RiEJpMyiUK5e7M0gqz3yTBHk=;
	h=To:Subject:From:Date:From;
	b=IBJ/UVQK7iwIHxTh0/e8ddkl2ROlC5zWVe4acEUZ+osMRe1WZgp+GyK9/VS3kcOtM
	 0VaoiuHYQFEX9OmpXQMioRY5Bx/ubVZoe3alinS8hTYyzrPRSX1Hpp2Q08oO+Jm/e2
	 uAXp9jlSUWjHEY1vX0SiEbRtYKdAx2i0WogknMSuT1VEzJgDJe15hb415fDOHhuANX
	 k/Je2MScL6kM6N7WMqyBOOQlG2DwhnNO7Z2GpIe3RFb08yfZqR8R/r/Rli9wy6L3GN
	 LK9W8Q+O8RaA/cGQfft5vRdfOQxIggLXrJ4SdCYcBOPB6ngq2Rw+6N7xCvCfVVb4rY
	 eLmB06KAoES5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68729C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167197088742.23903.12284236723569917604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0685892c8a46f339045f592c766581a65baf3f21fdc4110c21996fbcdec7d2
Date: Sun, 25 Dec 2022 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671970887
