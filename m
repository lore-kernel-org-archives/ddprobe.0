Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504FF27F3F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 15:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBCDC433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 15:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689954728;
	bh=9c+fhOPHKmQ7oW473F8N069fUuV+34AImnsyVNF594A=;
	h=To:Subject:From:Date:From;
	b=UeG6Bdp9okHXs40PwzlJxmf/s3do/N3vZdcA3V+qLoHC6eY5Jf0RlszjErSxGOADw
	 kg4GBJjeBoz0Tp3JvoyGXS9AV2zI1Zu315djGXuj/Qb5u86ucodgigqLsahcbIpzgk
	 dO565u+UJvwK3eqFMECI4RYgdozpmRPrxcRS/N1opolK6YH2YmpYKjmLt72b6r0ivf
	 PQD5xDZJ136W7sd9Vsdnjs7wIpIJgBhCllsHn733L5dmVR1O+Do/q3j+Oi6SNqvA3g
	 2wnRtGrG5nEM2Byt9OadOsj0L3xJC5JP3ATHr22U+vwrNwR5voSf0qm+Dr4rMqUtb2
	 wJtQTQIrHZEkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAAFEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 15:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168995472870.9488.16946765343828706483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24fa89c2a3943ba5cb792a7f3f811b884b86c0b12f2040212e69bc01b6ab16f9
Date: Fri, 21 Jul 2023 15:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689954728
