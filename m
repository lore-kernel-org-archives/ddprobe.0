Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5837215AE8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 11:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9urhGu2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAB6C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 11:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696938428;
	bh=lFeNo4RBxgJJmedXZjzyfzNnYO8pDehfVpS4HD/IBPQ=;
	h=To:Subject:From:Date:From;
	b=L9urhGu2FABAj5Fzs9nzD4WYOaDu/MRm423JXia8sjMKpkV+PEIBGySKaynGcpTFs
	 BMuRq/VJBtW5uxr7I+Rl+yTf/qLLHct+tj5E3xMNH8DAT5IseEbiVelClfB9e+xaMc
	 GT00bJJZnwY4e2WQkfMN0jmaF1Z1B5590qlozvWX4I3/3MujG1aTBUDEuVviWt+17h
	 d8LkUHuUiVZ9V37OtOFX/0tcq3ruI+STThYNVGFsZW5LkFBelEmika8f+0TedlAOk+
	 an2Y/HNRYTpbq2NuNu7KTETm7xkEaD9iCy684stihq6u3EzaBEioQb3UPR6ziSkjWD
	 G9oxS2yQNzQlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C71CD80B0
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 11:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169693842871.618.1080522938584246795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2c738abcc5ba45373dd538e75065b4c7665cd702ca57cd36e62ec36b8dc6b2
Date: Tue, 10 Oct 2023 11:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696938428
