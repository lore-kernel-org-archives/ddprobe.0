Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6B113AEC
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 11:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3139C433D2
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 11:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685534046;
	bh=UCnsvjTzBhEtDwjDv532Mag+eBhW9rpbmHUnda5N9nA=;
	h=To:Subject:From:Date:From;
	b=gFKcdx/RhK7nCX/bIPsDp3vWF4efTCJUlWK+R2VfLhScWODD0jTLF5KJCrUaW8K0m
	 jv0d/1WltW17uPlWabIqjPto1EwVrUzoOJLyJHqQinPiJJUYpaZSpd+CJpnXsl3L31
	 g0HZYIpTzrhniKqJxH5m/PTlN+XOCXWC7hnovb1mfyMsSC3Z1bLoYvVFdG5iP3wk3i
	 EYIONMTZKKIA84itFWvcIiorBtowaonhJq0M/yOJdRXPirgXkKteRtLtkbwAj5fldz
	 nR0QTNzQyMU8yn9Lkl+0Qvgo0hKIyEl7Z2MLVk4yWf1iyOw6Vof6jzovOyUQMvU4IA
	 DvBVgF/wpNY/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCAB9C77B73
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 11:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168553404582.23013.2106469921094166003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b24ccb4d3045c3696edbedeef894df40b82273a15034b78cb8ae27bc53b088f2
Date: Wed, 31 May 2023 11:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685534045
