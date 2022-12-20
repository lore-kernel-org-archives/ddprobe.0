Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F017E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C2BAC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671504687;
	bh=kkTS29Se5LjKO9p1Kzv6Apo8m5recuk8h/SPqP2rcJA=;
	h=To:Subject:From:Date:From;
	b=iH5/Sjk/S9VIzWB/7QEqZz/KxgUztlFxx+RA2QdtaRpnJgUTXt2B75OQltx8pNmad
	 v/0Q0fro9fKi/xzpxNkXTlBhzHh2nXhTb16LEKz3MxrPkau53YF2B84DnAd8M1kH6K
	 msUo6XuJCb18tMIYjCYClEr0sd1y9NM8Tr2ml0p1tBdZDFH2MN5xxEsXj4anokdAzD
	 SqLxreqS550dbjB3prqDQ3Iv1JEt/qys8WQiOYpmiAz6F+szNwKorvZZsFoV332E2e
	 7ZWuk3vMo3c/LZmm+29A/HwfzjehEwgq8UEwEmjqgWSrfWKYYbI3cRzZyDs/tVHZ9S
	 aIUvRLRfJHEbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 658EFC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167150468740.3232.13919465488018452704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8bb3c46874958b8f5edd673da4c6d2e14bc8ea746cf8318cab6799632f1d116
Date: Tue, 20 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671504687
