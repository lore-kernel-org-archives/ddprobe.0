Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4200223EABF
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764018174; cv=none; b=uoaTVxg0f1jgwabKrNVrTmKfVU2YIt4cRQ5Ho30fjzaOlnNGUAHuj1oluay6Mea9kTlA+Ec/UgUVP5lVd7jWg81N+BRMY9UIsk3BaVooDqgTgSvZ6Q8ZwPYCDExyb79YOJPQhCFdx+Dt5JdjZD1lpmjmB0bFCS6YOAKSCYfYFWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764018174; c=relaxed/simple;
	bh=IavvG6JuhsNZUfU7sF7dBfEmxaxnxfG5fvjo4M6J9n8=;
	h=To:Subject:From:Message-Id:Date; b=eoDwubouDqPb1L8H0TGL8SdFWSfFLDXnxQqccqM2nEN04BAlKD+JY2jRWxAGxjhMQloKjckEsZElhpIrjv6Nh0sTJC9sJiOsmnjO0+Q4L2MJ0UG7CwN5i7CvxUMExnGbttIo4USW57VaJWzXBPp7NEYEk/US4sdBlmnn6KkgQag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggwSIEjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggwSIEjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEC4C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764018173;
	bh=IavvG6JuhsNZUfU7sF7dBfEmxaxnxfG5fvjo4M6J9n8=;
	h=To:Subject:From:Date:From;
	b=ggwSIEjyWHIj+caKNiHqMpmFKAdtlTRofHKloixEo5VHkIYFj7uzytggnfRcBidKw
	 oa6gC2shRrUiMZ06U58+YXdJqL2X2RDuTzPU6wRbbmvwt6vh0vKYYf6tNLhR8aHmoR
	 sFW+3fFOVOi+qOgGyBvf8p/mLsO0bPUsc+va2hi9KWWvaxrxhiFSbc+EH1TAWIagcC
	 GsGpB+rN9XoE4Hw8nDMejH/1f2f7RryXVKzr6Pi6jEJ/JMpKjZs4kjc8pE/hb40/d0
	 gOqLMd1tqDHNjMNXM8FGI5glbfBE+igIM0EPZHozWpIr6eZfeYBnFgjIJOUErUxVcI
	 /9kWf3UGMoxWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B14ACFD355
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401817359.12211.14775544711532208897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4011257f9ddbae1dd52cafb3161855c90efa191677aeccf23f8bad9e169d2cd
Date: Mon, 24 Nov 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764018173
