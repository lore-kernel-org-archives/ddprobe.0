Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5731EC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EBDDC433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673688087;
	bh=epM6v2Ch+qnT8+M1oUH4jg0QTzwMFKyj2snmmJRnXhA=;
	h=To:Subject:From:Date:From;
	b=IIHjBH9huaSTKFvfwOOxtSBF3K+lEVTVdM0XKV1giXLb8JNl+03drzZc5364n0VHt
	 U1Gd+WDXApsQXQFgXcy2RMyP7O5LZon0kCHFRqsT4vN2x7Qxlwcovpo0fYMNsHQ4iP
	 hZs1Ignt49iL03jXXaNu1y3TN6lxjSw1k+aYZDEqtWb9FjySIukaKbOzoBk2lZmxYw
	 t1G7FZU5nESS/UuJaaTe4rAd1qu+Tg3L+ruabU9D9Rccq7M1EUoYwmVxqBlUc6ltcw
	 GPFV3CGZVY9UGyEXXNyD9NlS9BfGlPEvJzhM+ESB/nsYjN80BEDQ1rV7pOolcMmyQo
	 lj80BpufTnAZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DCBBC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167368808743.17564.16348840726095523032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9dfd166243179d6455218acec3fa9e8a9cbc496f6b820bdd8e72b1f7e8ac45e
Date: Sat, 14 Jan 2023 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673688087
