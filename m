Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6FD2F99AE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768862034; cv=none; b=KsX7cZyBCh6l5EMCRJdc1K2hD6+sFusppQQuJQd/j0NWeUNlxwjpm/fIfgpaoaOuQ5EHmAJaFQbf+3QT3p8z4gBmIqO5fDOQI3n+3fJDA6WFBqmOfa24Fn4BIdJIyUmJSXJcas81MG13uGuSU+ttYKK11FnpKhEwKt0kHRs4yKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768862034; c=relaxed/simple;
	bh=CWRhmfbs+p3xnLDhbXjP1Pba5y8Os/WV+iiqDNsBUe4=;
	h=To:Subject:From:Message-Id:Date; b=bTbFyqfvjFWNXbYIKVSnCj3I77B9H+RA05kdMhgAOCjiQ5bPvCLruxl9v7engnyJkIlNYE0HE2u3IhfQdPdlHBJdGVekfAHMBBckau6Rum7qSzRYu/4FS8CovtFnbKxdbH1+xax1FQ2H/cNeHR35mMbEGLmzzP03nO/So7Hi9NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4loZb7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4loZb7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3BDC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768862033;
	bh=CWRhmfbs+p3xnLDhbXjP1Pba5y8Os/WV+iiqDNsBUe4=;
	h=To:Subject:From:Date:From;
	b=g4loZb7q8GWzJWzwQ19bjFKNTnyxC+JNaqOxvlNrVmQNJy/Ac4/4aq3LhZ/uC5Q1W
	 iaRF39kMMv9yuLhwY0oZblQyhpU1IrvFv2OhSMB+woYpLbvkqwsWmVejUlHKbpOQjz
	 2yFcd6voc/S1zV7u0AsQuDrSiCQ2RhTPZwN95Ua0YWFE2ZoYpJPJ6gked5SmA0DRRv
	 wMkfxXSNdyE/ZdRyFWRqvw5sFXY3yRd4Fde4kdIiTQ6vJCADc5I72wog6MeeAUwBd3
	 McqoXOYnf4Bh5LqxcgHf9PhhwVWwsf9tYFBXghfuMQvBmmhVhscau7dfqe4H40huys
	 ozc4RtG+BlJTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901DED2ECEF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886203358.31785.5384539233109122293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c99584f437d52dfeba835e2c2c1067eef90b08826463eee8265317924bce1f48
Date: Mon, 19 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768862033
