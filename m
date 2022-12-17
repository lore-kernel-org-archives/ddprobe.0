Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D092F23
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97F9BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671308487;
	bh=63BxBrq5WMJnDw5HRMp4V6S852RqtZV6Mv03bvpwyko=;
	h=To:Subject:From:Date:From;
	b=ulk/QFgBZufLpynGcXxz06oKeqt2JQ7PgiNDujVrN8gez43Hr6JQNuCX/NGqgObRY
	 XkunDWRKT4fdkPLWTWn1VSAd4th0gqts25GTEIpkeDPtrZcl9EUGiDMpQvYdWcgS8D
	 spUyDZC0h9URnhVnqHO3TCVdWoFfTnFRJvpQVBL6KyqD9JmjL+MJL3LKp22tT2T3lL
	 OZNKm4rqy0jJkSRy0jDV/J2ExVt362JRAjD/WHp8RcG3Ncg0jPUt6EBlfosfpwZ4en
	 E9pqf4h7bGBrRHKjBKrZoZrT+Aap+OG7e0TjM7ticZyxFGJ+Kcu2a/CJCLI/hizrSN
	 UxnZ5ET5N1W6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AF53C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167130848741.27987.1087277059057891095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef620d0741adda33face02dd883afb0add345b23511c3b7b52f8d41f25464955
Date: Sat, 17 Dec 2022 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671308487
