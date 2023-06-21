Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6511715BE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 03:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95E0C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 03:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687317788;
	bh=ZFGE4qise7T9G2VOqjO+5y4cKsU9AzoJpUy0GhOQrFs=;
	h=To:Subject:From:Date:From;
	b=hjYDZTXYCWqhazgWdBCifBdigYNgvIGk7/T15GrkhTiv7Uxt6v+ng/JZQZDu8Mbjo
	 iwgPsfDk4Se+BJBdxUpuFOYmY1GYrATBpkED/rgYZtCZgqizBtpmZyz8qD1zhcKAKz
	 dywftUuTIZYP/dbtuiH4pA2CzTDhpUux76FjZ7OXuAzlQ2VncZ2n2qX/5bd3Z79wae
	 5llB9u3iRkXfIgXMkg3P6BxLZM8W0Ct5GddT7WxOizZ8kHrcoPslVGMjZWKx1QOXGT
	 Q6otLyK5hSp3T3GIyrgTSVQvatEADDVLn8iUNkoKR6A54ULeFJbiBuuiFJUzpXRaGD
	 qNDZ+lcFMXzdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB17EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 03:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168731778869.11760.5731825707511986132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba8370fc69e0c6f4c3303708a5567a196dda638364894a227a2363f438283589
Date: Wed, 21 Jun 2023 03:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687317788
