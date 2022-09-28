Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE4B4C7A
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74554C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664396453;
	bh=RO2nSdORjBpJ3MOnA3fzuAbjehwjbAs9GwwwcJ1CwVo=;
	h=To:Subject:From:Date:From;
	b=j6i3o47Z+7YqHjEkwuGWaqoSpRm2gqnnKZKzRMMtVozaWW/g20mVk/RAEYyCdwH3T
	 57Yda6JhTF8Fhg3AAPsbkUsaOXo8M3OMN+8yYmVICxAhxyrPm7G8aXkiZLpVTEPSBN
	 LXDiwh9sngQNIwlt1Hoy3uFEly6rA03mH6ecbYh3Zqxyu1bRo/kjFbtxHy45JnPlwG
	 ZeM8rI2mK117pgvUsBY3Vful3nLF0I0cZKYbnlGNwU3pwaqoaPRCvCjDwf37w3GcF8
	 t/ScyjwY/rA8xyQEXNHhMWf1lKeHBgZTGx3KSHWu0UJSCdlUuD+Z2VoAO7uVczm0i2
	 3XsBLLfcGhHcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC4BC32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166439645336.6292.4223112573530014383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 384c9e677ef8810c11f984582d6be0d2131ffcc2f485027aad44b32b893946be
Date: Wed, 28 Sep 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664396453
