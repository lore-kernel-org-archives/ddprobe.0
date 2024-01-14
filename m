Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A517E
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDIFFr+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76519C433C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705208896;
	bh=/ColWcaI9XodaCnPi8/9mvUd4A0x6yTcW8FUami7QWY=;
	h=To:Subject:From:Date:From;
	b=tDIFFr+hdHNasBz9oKnknwS9PyJK+0JLo1Gg46UkoGm9n/+ucHUeRuoECzwVtUMto
	 s901M9HXuobO6w63hlhAIdR1oum98Pna1YwW/NVHhP/EeN5xFsZYvfSRZd+5ywX+T5
	 zeJckvbi5qqOe7yzzGs+YBVEW9dgGYdy4x8rHFd01IAdXPWyjARIc3FKlgOG0Ni9s+
	 m6vxLY9dvFzhg35Gb19nPOAzaYfFSPrzyxZ3A7zuvwS6sKmGYFKcuAU3zRE0kVgDt3
	 vk7WPq7JvSFcfOmHUakGsB2yGdkvd1Joe2hrGsXK6E7g0i4JGpsLXadIF4dhNgFYmN
	 2n/lhQPWPoJaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD64C47077
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170520889636.25923.1945112715396019049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74797f8aa9859b1ce2572a20879cb02da7b00e234e1df0dc55bd1c78dc29db04
Date: Sun, 14 Jan 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705208896
