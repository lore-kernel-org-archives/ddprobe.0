Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6E917F1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CC68C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669536054;
	bh=8P+F4rWWl0ma1q9pbsShdHVYIzF+h4kGznIJsKxB9Zo=;
	h=To:Subject:From:Date:From;
	b=GE753hjfl5DohguAmKyzlpHYiztpeaqdduLb2AMjN42qLWSPAK1op5ZY9PSFeejO5
	 Cx12AIoerTCRv+JPAEIGI1bnyEy8N8UyWONtGfrTzyNSeepDtlCtcFvZlLnituRMwf
	 /vSYuen9HDUaVKhGO7fK4kOer+kHfYW3MNcWWbcD3wQqLWlXAN7iIq284MHwF9dy8e
	 iTzmprC5mPiid6xtVae8AGApZijEgob21zwWRY34cjUfrqrYOKVwPzeGBW/4Ql8Tl1
	 uvAGyPgzb3L/NdvtBcL+JOtanOn5ZpzLvrCPTqIWrChT8cj5xgDZxjP4MFarIxTsNU
	 pBCEzFvSGWYqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60055C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166953605435.9692.17293478553163569218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259b9e3bc19ac15d4707046124135cfec114c0cc36b70e08cb0994e74e95f502
Date: Sun, 27 Nov 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669536054
