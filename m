Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CF853B4
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91F5FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671666687;
	bh=ZfgGi67dQM8GzvGJjZ/MefwkjDWZFyqK8TLlnlo3AhA=;
	h=To:Subject:From:Date:From;
	b=SmwjE77B0lffL/W3R347sWwJCV/88ZhYKfF0kBohoSSNyXykJQM7QZXFUw9SkUpdC
	 7MwU1c2LsFyhSiSSQMO6RtepytKFyJZkDijWpSGaoQ9+vhvszxnaJojdwNBrEUds59
	 7UgGj5GwLUQiIWjykg0T3E1VNgBDy502wTMUlj7i8Xb7qwsELU+eeJX7lk8xXkg2LW
	 JMS4vHlmpbzUpYCP7GAen4RCxMo98VtuCHrzmSmfG9BAdSHf1ks0GJM4eULb+uHOUb
	 w/THQm0qhC9ARCHLW+rcsxrSTEk8lRTgljXxsGVA7E926mBsKXgtrOE18vmj53iuaD
	 wvOBeVEiZ2axw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A09EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167166668742.32040.13267266345407873838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e98e0b54ef4107ce7e01dca1815b6f06fb7ab4fa541fcacc15ac37b475ed4c79
Date: Wed, 21 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671666687
