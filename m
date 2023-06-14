Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75BB2125C5
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 23:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E93B6C433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 23:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686786428;
	bh=cJa+bHQBtmaJXhyXz/sA83gLrH+c244v7rvtAvH65R8=;
	h=To:Subject:From:Date:From;
	b=U1W2KsHNSsCnEFGjY6nx5wp7m8LDCiMD+UIKAJk2DCv0GwiQjeIPYhJBWeoS7Tfo7
	 FchoSWU6gEb1450kKFWxIfENtvIGePda0mrfrxipmOnNettb9Az22YJZc85Oa43f4g
	 LkSUIGWOZiF8F6KOgFBeuEQ7VvSeB4E0n3z9HUZGm3CHJ08rweME1Z46ryZOsKSKkB
	 xWA6naKP/Fvk6AVxTc/GaZVBgaSX+B0CKxF8u4juyJUqE4Oy6HygTyqijFx+Ly9zAZ
	 kcp5TamwnI36sPJALoRNQcsyqmr++Hz1xLng+Vdrzqhg3Z+tEv9GD1DPgs/rZ+XbyA
	 RKpsvgN54Vg5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D09CCEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 23:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168678642884.26827.12714131604582496613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7df5e502d9d116074843551df3c32c572f3bd708b4a46d23d8c18589051633b
Date: Wed, 14 Jun 2023 23:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686786428
