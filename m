Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D121FAC
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 09:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD716C433B3
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 09:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674725585;
	bh=Df+QH04H7ZUQNeeEw2xckxo5/lyoBEWwfxi6xwHvEvs=;
	h=To:Subject:From:Date:From;
	b=VQR52cX/qfZbjySs2KZYEoeZMbGuZujvV5FC87k7Z9pmZ/ut1pivZwOs65hiG5jIo
	 MVkbUl1mf/kStHuK4dboukYIgCI3mu3jU6+ZuZ75C2TmUY7eimo9jBR0e8Q9k5OXGW
	 IG0vv7vvkZFRJuf2sx0dFa1VVvInLYwXCt85brKHe3IVq4cGvxzOFM3TuJZre68k14
	 IIJs4xR+WeJgbBkdCRyJsQEQB9D4l1WONWZWhF8A6gRr0JlryAyA6Rs9SITKbcyFU/
	 GxqkJch2i0LqAUc4+C2N8Yrl2z4vLBWnSNooAkILrjCXnd1EfBWGaP8XxHtxEV7JOw
	 G4LJKumSd5rQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3454C05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 09:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167472558572.17023.6580602393218364790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d143b45c65b6b73ff752ecf640fcd49708a8948b5aae1f7fed5e005d52352bf
Date: Thu, 26 Jan 2023 09:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674725585
