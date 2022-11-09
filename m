Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BA917E
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FDDDC433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667975454;
	bh=v+t9A8fmBmJNYRiccRyLRmwLqTvVyJDlHCCoKRMkrYw=;
	h=To:Subject:From:Date:From;
	b=LFirpC/IMDJZyzzcY0OIPmtn0kMgBcWZlYa6qDzPgLpywa2GLuk3qnNj2zyhXAjSK
	 Uw9wWREu+qcMU4F9G7BTiO2xmQUOdJ4mmk07AYdl0LbkxQkla53IE/GBmRS7DxdOzx
	 0zyWBN7M0lYgntftI5uwaVnX1E4W4TsXOxGbkk5QqCjGLEDmu8wa+jpsx8lTwI07F6
	 zLZLezQnUpgw7+2J4p6O/fp3PkvS91bvO9LJQmBF7ZympW0gJFroApbwKqbRL62R4/
	 7r1OJpmaLDCQixagDKsxb9JRkvAiffV+qIOgw3zaDNljEr2jFfBrToA+NUsduobB8z
	 zDV8c1C0nYPAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B5FC4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166797545433.3886.6206278944674146771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dba5ec1a32fc5abe2721dc4d8805d90908c169c4aa1ff53e61fb384b33643c6
Date: Wed, 09 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667975454
