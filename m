Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A4E3236
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 12:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F36ADC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 12:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686398406;
	bh=SJ8gBtW2R298lSB8CLPiKIoYsHaTpBkrQvU3bfmSNzw=;
	h=To:Subject:From:Date:From;
	b=ulhp3sAHzRJzyObP/zpEbrHNkWUN7b/d/PEk79UqU4pnTD6DGjXxqHdofx7mHrXV/
	 e4QBPe/rar7VQ1ypI6P+4vyk/Osa/kgHs1uwp3sf1tYZZvVZCnFp+cW4CVx6CscirW
	 M+wlutPNTVP45jEkn11xQtcXrVwfkYB6U6vvyQwMeSwuW9Q+UeNej8hebCGp8PWI4F
	 tJEisdfvjVtqQMiuHVEfY0g4EcCZU3SszlGvT6VN33kboGzpeBivWxWmXd6kLPZHmn
	 BbN3Bb4v62GCV3wYDDATPHZrplsHt7GVNODpYbKF6lObn1L/3Iqh4l6gBsXPKo6Djp
	 gB+n0yH9UI6vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC247C7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 12:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168639840582.23881.11483337885515896475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f1fe21f8983d72dc3afe9be45bc4d07f7a47552e6f4b0882c8f157bca75497
Date: Sat, 10 Jun 2023 12:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686398405
