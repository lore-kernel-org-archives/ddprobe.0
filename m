Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D5E2236FB
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749835794; cv=none; b=bLS7y2EoAwOqygeTcIKxSY+o3TPBgGl7I0ZO4VnyZ2LHx3HUTW+/pYz/lcK3Gpvbjy21tiiuYFCMGaeN68XifusNJ09Vof/kEu7dUgjc8YqbGVeC4DtH4YlpwJQdbddLTWtlWFkcxlQw4rWMLYYtuZn0YiP1C6c3EfydZ6bfKZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749835794; c=relaxed/simple;
	bh=B/Lv8i8VCTvgFfhG+R3Wlrap//H89oPL+w/4C+3w/mI=;
	h=To:Subject:From:Message-Id:Date; b=XgWNX2ZWzC+wyU+jI+3gFQN4LVAzJXfFLHUMbvYByL6YAKN6KsCwO/nx06NbOJZuAi7a42ITETV13dHBH+DJT4vn9iN9CIqTU+D1Z5ddu2qhSCmcn4rdDRem+ifJsDf33Od6KRNn/efLl0K/E6etini4YAs6CcmslSu28mjYH88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVa4VU/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVa4VU/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AA1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749835793;
	bh=B/Lv8i8VCTvgFfhG+R3Wlrap//H89oPL+w/4C+3w/mI=;
	h=To:Subject:From:Date:From;
	b=oVa4VU/SJH4idWk/wswZqknEKSZaCL9a0k9KuczV7Kvc1zXYeftGk1SyQZw7Rt0nz
	 evrmkkDaKh3ZED+jWBxUlXfhV2IlEhuTg6tTvc7P3a+RdlmnE3GLLwvTYDcQ/lPufx
	 0qMqDvezGZCCY7MsesflhUxZyNoWsUGlJkcf0+Rjg4WFHjORKEh9K37sVwMQAG5j6U
	 JOERA5Ntd2I+V6KH+kCLLTunMSGnlRQSLbCBSFCoGY6IPg2E/hsJDupUmcwKBif9/m
	 eE5QcORIjlvU02nxQtrp5iGxlQhNhdU8BccogRFU4acX0o+nSPWjgYqJzjs2RcM+SM
	 Ffn38kzKkatSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE33C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983579357.19169.3051172741729380558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cddb8a626692bd8eeab2fd98e12deb3988b3cfc5eb2db8f128e3031aa7a64090
Date: Fri, 13 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749835793
