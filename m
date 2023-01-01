Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0719817ED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 953D1C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672551687;
	bh=7Y+A6GSlyh35X2lCsgVHX2dopIIte+lZgKZNWosFVAg=;
	h=To:Subject:From:Date:From;
	b=FzGs+iVBF0xO3PfsXFh1VtX10Wnz+zpGq4Es41ASOXMmt6yPAzARA+jzV6STik74+
	 ZrwyuO52DHi9aliMLRRfXHYtopP3tEwi1je5wc8RKhzsYeEPvD8V39ZieFy8DcopoO
	 v7r1COcVjob3lCSb0ikVQmXh6Sqi5J0/zEUcPJx6S2JuJXf0vABhV8DuV0ebwv+Anj
	 f1DvZ+YBLMe+Vt3vOlJMBVyhg/GXhizQyaLnws5hmDXYucLeGLiigI+dWwy2Nv1LI+
	 8+7GAerjq9nvPlw9kGPUxG3RWSGCGxw2no8IIElyHxQ5Ki5GjWvBkVpn6jrvZKf2Aw
	 OqfQmg1sV7YYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FCCAC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167255168741.29563.13526058849402584474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cddaca43b32876d2b4f44101277a09e29f4b07f38b74414c8f4611ea85d459c
Date: Sun, 01 Jan 2023 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672551687
