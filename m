Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0257FE
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCaI7oLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 799C0C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703551696;
	bh=L3iASuaooY8IUOdZxX4OnjdN6Hya+n03r8TkHZ8BQqE=;
	h=To:Subject:From:Date:From;
	b=HCaI7oLD7uMegrbPuOte+8ihwEWylEV0KRJFv4UGFCSLu0QOGqbGwmBjC8h979XyK
	 AbE0CfispVpBmm8ehJvIE0VHFL1eIks8OMMLKrYN+tmllg4zGyx+B1rG1YS8dYoDjh
	 VqBpBzmgwR0lTubnTRR5bxatw4WwLEqeXx/xk/trikialBF0MPvXYdWtmJquHmsq5D
	 +jvuEdhyCtroI2BuOFA4Uq8FGDCFWV+ANQLqBbnWfMOUEmUjA9/YFq89jK3xFrk5J2
	 ZtAjsxxZDahi1uFNSNuhV1aXQ1vIiNTSp/V4yTpx3MXLrPLyvohiHQ6Afv97QdrpiN
	 bLg3+2HLB4KIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D605C3DA6E
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170355169637.14964.13250243119542261549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5aee239044bef10e0d4e35c14d3a155e1ef388dab884f6d51e36d7fc22e9d4
Date: Tue, 26 Dec 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703551696
