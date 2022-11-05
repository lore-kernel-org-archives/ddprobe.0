Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA786185B
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76B2BC433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667629254;
	bh=8t97mwvxq0ngqvhxNJwVcAUrWR13chuTLDsnvRIm8Wk=;
	h=To:Subject:From:Date:From;
	b=ILt6RpEAB6A20q0b+dAtwsTb8gVF5e7Mwf7h7yFIPzEvedKDp3Z+21heIUWDBrHtV
	 Fn8INzLze4awUhvzOZEEVowmmvg9n5FWCYqPQvWHhZNShEVFXcYsPRfpUXWHNV9aiq
	 HWjYGv0Tu/aLOp5NyyfZJH/xaplbsAQeVDpVtMduuxE10yyGMrIPwr81olHIiFLwen
	 PK6pVdC5MDTfE+dmWlBJwaLyA+CMntMQevNYUYfjH3ztkp9kCG3YiN5sjOvGz6kIyM
	 Hyk2ImoKZxxVCq8H7EEorts2jPozwWCLeeYYhCZT1A4Eml6rPU7gFfnljm65Ru4zZt
	 kwq/3bNOCg6WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B951C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166762925433.17230.15574556258749968438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b4458d6bab3f4e3d6444ba11385b19c377879ae851909e5bcf89528358fdeb
Date: Sat, 05 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667629254
