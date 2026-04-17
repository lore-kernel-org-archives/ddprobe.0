Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C2831F9BF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776457654; cv=none; b=TWUXyVzXyZi9pJIrbuK39wghk4xel/NeVQUncfeuUe9YOuBO1GB0Yb/ES4tH+gX3CrCtTWZ0KS0s0dWTWS9nklxdhiSVTg+8oK/txZXRHWmJ8QYL/wUn9MQ9FAFrel6Pk5rpyjkvW2QMP/4R/3RJzgsXjzZxRga0Qc1ZP9ITCv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776457654; c=relaxed/simple;
	bh=/UZY0W7J7Eu69FSJ1YU9drZj+XRxGF3A8FQN2+s1mAg=;
	h=To:Subject:From:Message-Id:Date; b=EVrtb9XEdiTkqbZwCJp+Nn59HtU00WYDV5wCtn0hziRQ7qhYHcKj020EG7qZ2i34LQSjC3B/cZv/gxTnYG3qfHHk6smsQf4/wArSOhUSH0Ryce+2y2l/RovlLfmPZyhgnNfAClBObhxAIW2HcI3N8w5sQh8dMlcAIX5Nh0SqO2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJHJTvXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJHJTvXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2236C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776457653;
	bh=/UZY0W7J7Eu69FSJ1YU9drZj+XRxGF3A8FQN2+s1mAg=;
	h=To:Subject:From:Date:From;
	b=AJHJTvXchTINaz+aC1AA67Idml5S0Wi3IfzVtESIBhfC01QMSaN0vK9iWk8Pap27e
	 HIt4FHz3oY8wk/vox4XWNpJU4A2OLwPHoD/ZETNZ2PK5tXSqQymzvEbUYYSCYzozeT
	 Cm/HpcG0z7fbPLQ4zGeRy8cNl1Pgnjrtlk2fPbIn2+goBmMZHbj+u2rcL98/FZM20X
	 8v3Quno4M1wpKv19ySjsEHrcEFYSdRcYs5KX9A8MprfgsoQ7BPa8fLLl7rthrJyKQG
	 qnXoc+BuixUtlawXZJadDxycrEcMpqzs/CFWTVSl3mkW74fCD0eSaPqRtju0b4MMNL
	 xyXE3klOurFYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD5EF99C61
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645765368.14632.14284682086807098723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3a74a91f5deb7f51c32921b1795ce0d174d323b044425771c4784c3233b1ea6
Date: Fri, 17 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776457653
