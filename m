Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191EFF4E3
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUu89ZyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 841E2C433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704572296;
	bh=8H9Q17gUGr1E+VO2GBPFD2WG491AwWm4/uy78SqdUgM=;
	h=To:Subject:From:Date:From;
	b=tUu89ZyYNQVQCHxXbpYfXhyFkonY/JxNv+nY4gCOCCgrp45tZhynllSaveMnubfSj
	 yr7Ke8lVFyegTU2erqRuZjJj9wJikFXM8rFgpcseG2HytRqLNjkch3TjOpTa8JJ8zH
	 AxO9Eccmfr+CHfFf6Oy7gdT2jZk+DyLw1f0PlCTwVG3Z9i+nGKsJjDyeqaNEa/wudt
	 JB8C/DrhYD8XqvINL8rC7es1SfEutQ55ooMq3cgLTBlpJ6TJty/a7eP7Cb1TUqO8BA
	 g/UAPxGVsEh+FG2qaWk+xIs96DyapmEqOOWOfyW88D/qQZPEGQqsCMnRjYtR+Poq8x
	 3dd1sYM+W/FYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A4ADC46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170457229639.11940.11373589914880959248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f904a7cf7675ef10ad1a8580a89c6eaeba559ccbc0e4c5dfa5270bcf6b7b12ce
Date: Sat, 06 Jan 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704572296
