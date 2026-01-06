Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D22B14A60C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767677634; cv=none; b=lHuTt6Ht0QagUOBGyLnXEMyTlAtQrqH2bjNxLJdqqfFnhc99sKHdYs7nBz8XF+eAWSabV3O0U2P5T5eOVFCeq/c6JxVl3mJZgxLStAoP427isCCPzDqnC7Q0KzX8DlmMyF6XBUqWddEpPTxMqg1i/82CAQlTrtCnn5Hla7kyXYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767677634; c=relaxed/simple;
	bh=uHhBLmBq3L5/oa3wqWHozxYDVwIYSLNJry1oORh4cB0=;
	h=To:Subject:From:Message-Id:Date; b=CNUkgiiZ7t1sRHxLsTm4VbFK4mzVEnZ8oop4IU6QDJovMtP5qgT1Q6+b7vhskvgK97Pykbshad7yxLwTMlPxmkKMiu8W/6N62OsZv51YQD6XG1AwFOP/S7+TIo+KrEsqqNHsJ1UfqLKKVjlrE4guDqVJWZ/rngJ2qgeY89GDQnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZch5HA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZch5HA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C15C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767677633;
	bh=uHhBLmBq3L5/oa3wqWHozxYDVwIYSLNJry1oORh4cB0=;
	h=To:Subject:From:Date:From;
	b=rZch5HA20tlX6pHU8mUXRFGfPGqyRijPx+kjRx4fY2JNmmrtfBgyjgLkPu6l0gLYt
	 OeL9R4kiLhyT0lHu8v+dhDja6v/PpFYcU8fqMTUpk4/YXH8+SsX0dJprYcSHa8JblG
	 1+Szce/6lOTQc8og/XW3B3MJ0ztB9B2RfqAsyraxlhC4OKsOaVLnjpL97daxWK7Ed7
	 rRaNb0bKZIfjXZ2vVUM9kSifkZ8oXQFRG2XqpVt3+Dhgs9rwPNH77QgA3bRIQ/KENE
	 3JQ/8Op89uejZWWIdFz9YDsIYuDJjjq80z+v6gap2mJexni43FgNHuNoayNEEt1utv
	 MDdSDtXWMw/Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDBCD0421
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767763357.10591.17119984660404767969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7277ea50789dbb16214d639bc2650f980edb9f545549060a119b6c38416987
Date: Tue, 06 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767677633
