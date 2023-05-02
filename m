Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA56EC1
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 10:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6C0C433D2
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 10:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683023765;
	bh=vmI8hkeFrZDrddizqZyaZlz14o2HCrHGMVHZFn60K4I=;
	h=To:Subject:From:Date:From;
	b=Vb0PGCFyV85L4XUg+ccEhP8PaRFFIsL8suYbp4YIp1a2g7ZLY2Q8/NrPhuEUJ1gMw
	 67CUiZWRy0N63E2c7iqhH9g4lfqvJnLpxn9V0+M5onh+XqaxJElEtlnB67gRtH6pjd
	 3E5xlCY/jb+qsRWx0iF9/fG7WC6oAYFbtul0A5cyiC8S7hfsOi2Ks4O+pWRhccOrvY
	 bqeNG5Y8JWFgPkYGQ1OQccc0jpmhhzRayvUKRa1NemqscQw1OrjUujpRPc9rsenRX8
	 u2BwkbX0kAUD6KvQWOWIh5BeFGszMvoMIkfn5MOCFC26yv1IdQrSuLbAdqdaBV6L7+
	 WhSogDjxuhhLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4E9C77B73
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 10:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168302376576.14860.3376129639584559025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a7b5f3373a76eabe04141af0f053298e6ccc21bfffd9693a8ab9ed1de08974
Date: Tue, 02 May 2023 10:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683023765
