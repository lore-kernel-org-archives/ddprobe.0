Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407C535946
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746664795; cv=none; b=hOgHp9oZAS+u5V3/0QhuTQIY9oknyksXVDqiFzfM+fRodhMdN9GICErW1NTKRPBwMAHi37c7Ew0gLkhq8nPdjWSxdZVUsnU+5FyzwlJT2MrSf9P7ORD1FUeA0A5F8nIEN07lWOdKFKMvm0mMWiN3qkkHPI0yB0pvQg/qyIjpc7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746664795; c=relaxed/simple;
	bh=F+2DhKx4X9+HZMXE5yzg3wTV/ewPPTg48BTCw5xrphY=;
	h=To:Subject:From:Message-Id:Date; b=nI2aufXEFxG5+Zq0GB4jCwJNy1w35jHJEmSSyAjwY4huFOKJWiyl0FpaTnat3FdYgJ2Jog1EeATRcMY9HFEV9l/fzy6dZvsA7D9E7/TIVKaVhvV+GF9vEoe10WAQGPOWQSam+91D8Q6xPQ2DdPkLWRTzcR+AwDdiAErSeHNph8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9jTz6mX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9jTz6mX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C52C4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746664793;
	bh=F+2DhKx4X9+HZMXE5yzg3wTV/ewPPTg48BTCw5xrphY=;
	h=To:Subject:From:Date:From;
	b=u9jTz6mXQq/Gn5BKFJvVlTmkp0g85bK/NbuoRXHuTk/aQspRSd8vxeQOocAL6864R
	 7M68547U5WL1bEBpO7M8PT8K2KEXqEI7baUkkPwmP2TA/sVjrcN7TWAhRlNf0q8JHd
	 3O1NxYvOIdpSihXIgxUUiMTBX4ioybLLEyQRMl7Bu8t70PUtr2X4Vx9MGLvtR/q3t2
	 4o0LKf8DaEgMk83zM5gS3vFLfYQHUCllDaZOHRxpgVaV5cHJ1kJqDOQATSM10YkR6r
	 5EKt/FhW1XKdnhkKQSPcYfBcyUPK6gTSOPg1ZH63S2PQOZng67x81ea6zLduyggy8W
	 GoEQlP9UmufEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963FBC3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666479358.22918.12663533894985616959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54185bf486b5ff2f884026cded406d88dc9bb7c9d4246d10ce100d5900306584
Date: Thu, 08 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746664793
