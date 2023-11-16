Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253771EB23
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtpNa7+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BBF3C433C9
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700138896;
	bh=0wRMhezAMuguA7UIDQh5MePEG8xOU4NPDqhaFNv+5K8=;
	h=To:Subject:From:Date:From;
	b=OtpNa7+ajxSqfvyq31blBNjyu3Y9GEcyCstXgPx2m4lwQ33G+NvEzlbwqwT6IRSwZ
	 yN5KWFETThVm96MgvviKosxIryK75OjF/bVXpU7v8sO2gwZzf4/Icq941g2phQEe9p
	 +P6jC7IGLkDXAGCoKUeLHS14w71d2ZldSG55m1FuON4WdfClHmHIjlxxxXyIytf1rB
	 kiFnfenRbg3dD5Xk5f0WT47Q18RksXJ7XvqUV6xCy3pe/AtCXB8PIOZaEZFhdzjlth
	 eaqiPpGaf0nGt0aK0kC11ZNwOFMnQSjTYq69mPWTp7ax6k7htLxT/9GWnfGCQEwDng
	 9UzCXy2NgMhXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E4A9C197A0
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170013889644.11837.12795306941003812603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47bd91b91cf287b604c85b53cbad9522d7792934004138abff764264ec6dea93
Date: Thu, 16 Nov 2023 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700138896
