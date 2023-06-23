Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDA5A93B
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 18:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D38C433CA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 18:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687546388;
	bh=S+oDwmahFjF3DgPbL6+T3YUnX/eJS7zr0eHfvgJeelg=;
	h=To:Subject:From:Date:From;
	b=M1RKEA370Y0WNQEE/OCU1v3uGSE+T4mRb/LzQwX6JXhxYsK6E5T4cYjf3DO2TyWrf
	 CaVACKg2wfTKgyOyKUMswywjyMgCRNv/91lFMbOnXgt0wBkkHsiJW+yA/V38+sqND1
	 AJDlD7YlzbzKxmdGMyKt4GldG8ABr1z7TdL8+AWQQ6rCZdKf/1EyFIwJjjt0FdcX9g
	 8FgC6KWpuMs/nmm6+beWVkreVy44ZvwiRZj4vhuU9Wr7dB7O6ImYWnrN/gGvV1hK0S
	 CrcScuXboaJifkwzLyNf5JKjsj7dNLIn2G107IizQfNz2PiFEmLWcEtCncGkxXQI2w
	 g1xayrB9T/uWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA877C0015E
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 18:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168754638868.9035.9523782503786613058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f46e49cf42f8bdf362633b6a33ea69a7123b71516092d3793be0ddd98eac83
Date: Fri, 23 Jun 2023 18:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687546388
