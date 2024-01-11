Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2165382
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aK8v0Dgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85B77C433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704953296;
	bh=hB99mIifBTbk4kTVtvSDw8A8Cer0gyWotY8ZUyVKqqg=;
	h=To:Subject:From:Date:From;
	b=aK8v0DgsvFBA1WwFFZftbb0Wz/88TZRUsLk8BKge1YxEjXg/ECLUF/Gqxs61KCzn9
	 7aHl47VT20juo2I0PdUJbhSmx2whHaYEJvdHdV915XNuvJTQaLgXC+htre3tuLh/J7
	 a33I4t9VtFGkxjhfbxh4xOba86bD+ZARPX3gbfk503LtR6jGD2ihnk5avIxtxkB+1J
	 DLrFg3JWvdnRboK+QhjhdX62S7Wa513FQSm8lrVjjFYD5YXG5U2T2lW4SZuqRATJWR
	 n0SH6/ULGjsZrxuNiiUsnP1HDLfc48vVjo+YzxGHSqqx3y4mYZjo893CPKRFxRGus7
	 sb3mMURsgjN4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F80C47077
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170495329642.4561.11514026424362962297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ac264a10385da0778287c1e15298aeac6b10be2ab8fc607ec2a1f33a81c1ed
Date: Thu, 11 Jan 2024 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704953296
