Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E411E9F9
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70718C433D7
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668176454;
	bh=3reMBdsPW0Ky+VoEKllGqfyO4d0UIBsEqNg2vjuARMY=;
	h=To:Subject:From:Date:From;
	b=klg10uBAouUJbHRSDtBqO1g7tbJBvYYYWBDjkfeBKDGG8ZnrPPpcqY6nS1dyfDpd+
	 vo9mvJpFM1Ko0jEG7c0FNgPcNcsl+hO2J4Il5YUyeO4mHQg3J01jvaqPsUqA7gEKwT
	 ROufn1z8Ujd/4NdliV7Lt3gWjJlC3OOPM2ssfWCCbA7QPO6+vpRPc4sY/4y6hyylZ7
	 TQAwT83iiCdjKqIcQIPLz1yXkZwgH5OIKZqRtEbsLcHbmAThJxcAVISjMMy4YVzq5N
	 wBbwtjRt6HrjtK0imhcQ8DolX6i2D0Y8jJ68C36v5HBiHsjz8IFity26RAv+5aUt4z
	 2BdQd+nyt8sRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53498C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166817645433.22904.2769102952505770070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 631e71d4ff6a3b1fc7dcc712a94e2da7f6ee20fbad8f3080b1019c1f358b91db
Date: Fri, 11 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668176454
