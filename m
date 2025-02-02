Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513D92AE93
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738527354; cv=none; b=dZZCerhpG8aKwlFTTjbRYUQJ5b3f2jJSrRYXJl4tuvQl4s7iAM0VIZ4sldw4x7Yw8uHlnxGtpAnxGWyhW0d14eK4gkq3JZrXkdRWTHjAvNefBJARaCnpn0VHPXs9T8Cmc4iZ8tFi2Z9eugpcYlB8iyZbSd+2bxqDArtEIsLcpdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738527354; c=relaxed/simple;
	bh=4ZHDe0VRH5ZNkN96V7Qdbyw7D0oxW6k76E+G3WfquFo=;
	h=To:Subject:From:Message-Id:Date; b=EL7aTvAvyiYC2gzJXOJie/Smf53S2T84xG5yzzXc5rD9ZuwZAMAkRyT/wy76BVlAtVAwPoRSdG8yyQnL/pkxSZYJc8D06KlE9mg797onHSnHXmh+xe92jRhllvqiMValNLxUP9Yar44TyeJaldGhW9NkICV/PgMAg2RDZLNM+Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nM0UEKBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nM0UEKBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCE3C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738527353;
	bh=4ZHDe0VRH5ZNkN96V7Qdbyw7D0oxW6k76E+G3WfquFo=;
	h=To:Subject:From:Date:From;
	b=nM0UEKBeZKAR/JJsOAUclGKCRN9Kz4TiYepQHbLBBfgoPWA74AaQfEBnoTTAuEGgK
	 77ejW2AcP7egYmIvSdJJU4YfDlciDGYhATHmX8xvrJE+RbM1CCUUoiu8aFTpnhV1fm
	 o9KYp336qfqikWnFX8n4/GOPFI6Kf2tHtsbTEtytV9T/9RIQ3PoJ49QRjb5j3tHYwj
	 8nwFzEyiiX6z+OYleUon7jV/Bl313Qv+T/e/4kjYx/6hOkQhf9uyoZRKAfn0zgRKqa
	 padDdGu4L9Z4kMKywZsxKqdy1qzjYDEa9o5frJHS7bpBMWGGPCdK1KErZRHT4PIhTi
	 CP9SHqlMaUf8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D459C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173852735363.11214.12609596576937654704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d6ea81479c4213f87d137f31c320e815bda49ae7a93b66895702b100bdc956
Date: Sun, 02 Feb 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738527353
