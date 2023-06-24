Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9276AD7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 20:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA182C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 20:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687638188;
	bh=D/wnfYIZh5YI7aYN6u3/wXjyGNvN5AAcIqAfSuEDt+A=;
	h=To:Subject:From:Date:From;
	b=Ac2nsIRG8cJkVhz5iGbneZnCh/4qDRufnvN/bMmgz52/WUwffS1UNVjCOEbOXkXWG
	 UV3q07A/y/eJDVHab2jUeWbTYo8vnFFpUKrSW17BfowK+AcxR9XGbFbearLl6iorkK
	 5SeXu7mMEoIQnynNi7ouiLcrdoPu56uwdUP3YQDjgGrEkkhCraZBh4tPSY0Bx3FBVt
	 Dyk8wJcMGd8lx4rmKlE1TDmRzSb0oO/b/d3ikB5U2KL0rk7N0VHL91hZUuOvsk/7uA
	 hE471qNgECxTwqdzdL9feF8zB8HswlWh/vRmgqK/ZXY/fY06vXTeBvfoqwN2M820br
	 ql7YntvKUxN2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDCFEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 20:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168763818867.31107.15336631406583974342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d97d758e0acba9095d590ca7f859a318c22d89e83e5551b34171a9ea85d9089
Date: Sat, 24 Jun 2023 20:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687638188
