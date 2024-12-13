Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2136C193073
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734131754; cv=none; b=WC+wpkhyMRGMLAs2TBFYENfaUW244NcbQ1zL7pMX8O1p0LK1ZMd/IkQNbKiRN820wBZ/Htw3C6Izh3ROldsECC2F50XvfsrauHUd+dQM5Dhn+Kyo8Cdo8FvE8rUs7eR7LkmgCm4Jdi5OhTsUQ7LeD85c3EoLtc1cYUmyh+FFGrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734131754; c=relaxed/simple;
	bh=xA48O3qAHA7sJ9vMw6PPQ7b00BuKZM5JkaDII5I6gh0=;
	h=To:Subject:From:Message-Id:Date; b=tXh6DZcD6Ty1JNmNx3/30tl6X8oKxXvfK0HiUeo737bjS3/6NRg0Fe8FlqS8c+j69LVLuq7myklgIQqBr19hWtKmLIWKrpZa9rQD4ass1U8C+84u3DDArPcU0TtDLq8pphe+nPGHkAfBpGMQ2XUtxJR31fOoUV+JXnxo0sFtad4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWBdFJiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWBdFJiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD5AC4CED4
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734131753;
	bh=xA48O3qAHA7sJ9vMw6PPQ7b00BuKZM5JkaDII5I6gh0=;
	h=To:Subject:From:Date:From;
	b=dWBdFJiwHvLIDqz6TBXUUjggUWjDO9bVB8l1vlZUQ1vu8gNaP48EZBTgO89Q5aB0b
	 0UkkeWBRwmhXdVl7u2eGlCNR1wglajFijygSUHTBQ01hHUVp6NoIcYtcv2XBDXlI3b
	 3rPIOBc/kEut2mKTlSTXQswvrHauhWS0FTN52nQO2NBWtSIsBgzEbra1r4D3ArWxxb
	 9J1zKTlFqM402kkSMxNjkJxY95VfKrM+1/as8Frk0i5e1bw2SWfldj5pq635j1a13K
	 yBqxQx4W2W8onGAkNNWQ8E00yhuooovpOZh09CRWIFBCypGb09e67XzhJdsCoeyj6w
	 fvJRco14IHSdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D200E77180
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173413175363.13538.14987584336257360100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fd1ccae9fc5fd18c135851e28100a2e1e5557abef93b10316b54cb974d6aac7
Date: Fri, 13 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734131753
