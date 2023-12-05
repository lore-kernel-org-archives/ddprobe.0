Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0602A14AAC
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4kQF0P4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C011C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701761896;
	bh=8C21E3vrbGdTMa9dWcAXMDhiycKDqIlKLS5+upylXLE=;
	h=To:Subject:From:Date:From;
	b=s4kQF0P4A9UjEBbvPeRD/GOdvkZ/MpFreWSMSh6xg0yVu72PcV2kDmfzSezN4El9x
	 8HfBsuLF4JG3QsY/6HW5IQ37bBMLfAjG0SguOpZb0aVlCiiYH9koq0gnQ3sPsOAlbK
	 UfiR0eWmSeJPqfRU9uL1Uk8huAMxJqM6AcSKmHDX7vLVxa0pK132SM+rXtt79rV3Rj
	 xqW9zHNe6JjErGvqQkC/Fx9PWxuS/H7+bcqSfvAyEpD8tu2ARYwKtxuWpSVggw7cYt
	 fdqrVVcHUkjJ/g21cGUneIEMFpgrETqqcIc573fuV6+IwLJoIfJE85XLyuu8CTf0od
	 +LAThkNqNl7Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F869C4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170176189638.25507.17645738489399477315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0cb2537d63824207e63fd19b9a5a5e6681bea757bbf1f0d1715f08f1d2b5c5
Date: Tue, 05 Dec 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701761896
