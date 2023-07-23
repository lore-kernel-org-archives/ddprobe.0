Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 878446FAA
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 23:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E95C433C7
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 23:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690155128;
	bh=uEuUy4whwsyXhVy80USl4ANqC4e+kO3YKN1Gw3EfP+k=;
	h=To:Subject:From:Date:From;
	b=mS0BaKoo4A1wwErjBScF0D6EnBVZ9q1qzQZd3lPW/PlvxwBuC5Zm+SIReCO6N7WfK
	 yJUzYfX5BpkaUzV2ezc56oJbmtzS+GdV0oWqZzUS2CD/HSpfCo/IFhp1s8l3ONxXS8
	 gKORrkqyWU6H8s3v5bIeXJMKh1clefurOkDVsc7bFqm2/l0p910oGX+ZDBfmi6ay0G
	 VXf8a+nMmfl8bkeVu8i9/0wNMoxCohtHLRpqWZz5iC+MrSYYBKlfLIZJesaF4vqOF5
	 DK+fImKUik018fxrh0UY/qWtkE5dQBA9i6KK6ocZ9J3SE13nLBK+A/PaE6VK0MSOsr
	 sQZnyBdW+lYLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C9FC001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 23:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169015512872.1995.9512550553084745165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ffe9c6ec38845a92aacee0d795c55df4124cd4d5228b58dbf16fcc855608426
Date: Sun, 23 Jul 2023 23:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690155128
