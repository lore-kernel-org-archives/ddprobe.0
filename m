Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9B4186A
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJmqdwS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B52C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703637496;
	bh=Q9MaKTeFGOCcuEzVO/IvYPjLmBO2jwnEZ3CqbP6H2xU=;
	h=To:Subject:From:Date:From;
	b=GJmqdwS/8Kc74YBzlWep5eqIzdQryEkYTq/kgSjkNXej0aIKuSi1u9kBS3AU4MAQY
	 f4lRFmmhKbG3fSHSxkyc91FVphizAEaDo/qpy4ANMQoNTPz4wTngg2r3rzULvxnjFl
	 UwPIN16UZhk5qOWKoUvAGtt6ZJph7IR0nIdONzAv1402qOZuI0aT8Y/PjJFrv64wjt
	 DSVWfokigfOPrlEHh1MzhBkVwJqIZYXhrhsWks1rc7Ibk0VeS17Am9UVRHF9dD6h5q
	 BGnKZ1N4cLBCu1yEGOc/DRsuItdzJ03ealNIEizTfC+s3YfcnopGC8TjJJbjY+iudj
	 pHcFSmKYkAe1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EBCDC46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170363749644.24902.16151544104354812576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f00879a3ab2e1f7db1577c7bf43821924e8caba1ac82cd1006600becf0798e
Date: Wed, 27 Dec 2023 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703637496
