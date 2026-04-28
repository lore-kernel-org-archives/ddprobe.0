Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E623806B3
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777419454; cv=none; b=l+Mb9VTwaeMoBu7T4wPQipJQ+28LN/VEOcmmm4ROv620HlJqh1BjXLh4OkOa99omfJ7giRyKvj4QsE2Vsu7zg7USjgnxlXSNOATufI9r16OQ3t6BBowWp1xPbpkgia953rJHnFqAy1OR7fmT3lMWEuDxkPoT1/WI7aDsnk7AW9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777419454; c=relaxed/simple;
	bh=/JTwZxTAyIWLSiefRMgob9sp4Gt+PodRMY2rt3Q4diU=;
	h=To:Subject:From:Message-Id:Date; b=agZ6DvW3LzS9yx+rHqOYpYHl+CgGiRLbuN7aAcAABgMHDLhirxjPNo8kD10uQryTkKJfMyrNiLoERk2TQBRvTyL+9gqGz2O39ZzM7dXIeFSzKZ/LdecyOUCrbQ7RCdUfNEFW3zQ8Qma+QmA7p2Z2vPcB4g43a++CNK9nRpK1eH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2RtfQZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2RtfQZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB525C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777419453;
	bh=/JTwZxTAyIWLSiefRMgob9sp4Gt+PodRMY2rt3Q4diU=;
	h=To:Subject:From:Date:From;
	b=k2RtfQZcQmqkrOSzQLMfjjzrAYoS+w2v6lBf8w2eH4cqv2cIdYEz9Vg3WbjLS0Hqk
	 U4SX2qdsFjZtW5kjaBWybyFIl9VaGg1pXuyWLI1C54Q6nD1GP9pYA18+nZbMKSnvgf
	 NNrbRLcUJqGrFzcqxPATACqPbGdA8imjfe5c2vB/BEKnQIJrHGIDJgJmilOZpFSkh4
	 FVzEM1Q7S64Yr4z7gEK42qT2GVMYDQDvWKZ95H55tFZgzcC6AHv0hX/VebXPgnUL1M
	 mSjK03467i7Uu/lhUn9gQyZIeot1OLpgWSAIXSlVRYDOndrsL2hUqE62qzbRjk09sn
	 DMZuUuoYOoUPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B5CFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741945368.20253.16715303919770392606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca10202e672dc876909106d8c817fbe3cb8f4e3db25dadd3bcd20060a169f18
Date: Tue, 28 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777419453
