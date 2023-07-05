Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C786A3D
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 03:06:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC963C433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 03:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688526368;
	bh=nOTrxnJGp0PbafcCV45Tge0WW1ZvChlLy+gIPnGvrEY=;
	h=To:Subject:From:Date:From;
	b=OyaS35Rl4nzSevVKm8r1sYk8HLj+iYQ1BB0m2wqYbYpZo3EsWWEfqtg1Lk6dcgfvN
	 PSuB4w8yAvJNzzLUm0+wqb0axXZ+Bgx28ZuwjC6CGTChJvcn0I/lr4c/z38ekxWWW2
	 agSMd/SPQXUukkAHjxRH5TCV0Q9i9cKOh0Ym7JsvC/GynvWgDA841tglQw2cSpwAxu
	 Nm+Kd7SgdFTO0lLlL5sk49XWZ9TqfITBNLDWCRurPh3MaYoAGErGnh45dPnw+dIJQR
	 vS2y4R5AQTjayr1cz4WixpykqDtIVP7QBFF0j+h0jHiOWjXRQnvLcmRqNxnq1bmEBw
	 9UBObQY95jalA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45A4EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 03:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168852636866.21780.6776592160968063822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 563139a3c8a1c65fc4db835cbf12e2ce25751f7309d13940bd98e6e18611b3ca
Date: Wed, 05 Jul 2023 03:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688526368
