Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667727476
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 11:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7C9C433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 11:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686743228;
	bh=q4kHFjhmeYt39EyubOUowwxVjtYOYDoMRvEn5M3fmZE=;
	h=To:Subject:From:Date:From;
	b=SxxdVxSZLmzRzSkVoH35BDBbwZBrLwIan/uYaKaMDbGWKhp+Ua3YJQllozHZyHQXo
	 9JT+NBd08/4R8ffsIVvZpGPPVNh6jymqJXPm0Z3CGI3ggy5k5wCpcB8KP/NVvGIHnQ
	 Y5385bXt7nWpnSBorOXNlLD1IwRWZCXgpG7BfdEdWkTxIiHnCWKHH164RwLCNuW72r
	 7R9L+kKdDYCY+Tdbp208dM5Wdpf21rRBBxsNtxZMPGPQGg3Lu43DYui1pjambbzj7F
	 S0dGP/Gvmwt10+s0+WcF7Sr5VWTFBBXYRGywCnv1EU8FPw89ef00jkNjEeadoTaKgK
	 J9jHRm04Ij6fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6AC1EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 11:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168674322873.8781.10118039640625219309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d515e9517dbac6b9c45cd309c130d8348d23d496e2986adb1c2737cce952137
Date: Wed, 14 Jun 2023 11:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686743228
