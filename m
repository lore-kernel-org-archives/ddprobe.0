Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80F47B
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C3D9C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664722253;
	bh=oy6AcEqbxzz2o6RNL/gnCCfuvg4TN5ZoM23uoYTaGMc=;
	h=To:Subject:From:Date:From;
	b=JdXZpG8i4xh5Uuz8Mi+sIcf4PhCDg/na4MjTGp61uak6d9XksxnjLtcCOEBuq8OKj
	 vKjz37gPvxbW5iTDwJIeCvmn9YtWKZLF8bZ36EZtUF9Vy7LwA8u9KV6LHvxfnQ+qAX
	 +qvkhpFZmn14MtrDTSm5tYioJrmK458NU/jamTuxMv0Q3DbVHubE7ehs0INazFE9Q7
	 WPGm5lggWY86zORGveZMFfIH5qNHFYHLFPKoWSTKYJ26EEnv7+b7t6G8j9EwEpm28R
	 /1O8xQq3TNodPzxwDQtu+ZXHJbFX6lLQVfhzGCqVTkNoyYr2aSQes1dlHRTz6EyOgP
	 DuO+zSwnkq3Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53923C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166472225331.29804.13937085549695731097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b606100203cae32fedff45c81096ba9a0e6c8eaa4be9c4d31d2c79ca176fa78e
Date: Sun, 02 Oct 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664722253
