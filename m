Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF1329BDAB
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764693774; cv=none; b=Rv2U+FfyVG5n+9/ItJHXTg/IgKldYe5ruIUMr58YYAkcqbPo8ugrgxzpyFNmjz58nP3xqzPLwjIjh5Z+TNnUcMElwAJiKUJji2wpcBw9nW5Y3Wk0GtmoXs/cGRTAj6iPQJEP+xJ3HUVBwu110y85akNt5tPC8B8Bs530G+B99bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764693774; c=relaxed/simple;
	bh=NjNgV2kRHW3umq2I2ygdduYzeFUexn8WNtJ8BHXSDQQ=;
	h=To:Subject:From:Message-Id:Date; b=JhMGiUg6LGjOln9qHZIcH7nASOpeyRtey7bKfahD6uqfEbnO0ai8OPe1n2rMsVARJgoLPhM/1VJ6WkZMzctig2pZ5QKEgIV5fB+91B189dHuUlxe9GM8VujymDT48Ydq8RO1A5S+LapJjR3e3Q3J9RRbV65ZN1BLDc6YRmR/EiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeHMYB0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeHMYB0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FECC19422
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764693773;
	bh=NjNgV2kRHW3umq2I2ygdduYzeFUexn8WNtJ8BHXSDQQ=;
	h=To:Subject:From:Date:From;
	b=YeHMYB0n4lu34cD74KGQMlZWnFnQ3nWsn2YZgLrL9XbqbHbJpIIwULIJV8eqz2cuy
	 XMKccq945gzxiuOxa+MouIGowY9bUVwDom8yKrrZz2h4jFFwo6TOubfq6yfNKlGjzJ
	 kypxepUbnpbUH9psD5ey2i8FIL8i6nxjx7DMeqV8LgI/CJpN4PmPen2i6utqrutYtB
	 N4XmwgOxbWyNd6CHUs85PDQ+gC4tOuzeey76emCuGDknz7Nbrr/UtGj6uY87Ga/nTC
	 bXT0gO4Ze8VFr2814Q/XIr0eqCSbWI7ZuzGtXDU+47PsZ3DpWWd6D2ivAqYzsPTyiG
	 61qpL9yjkK3FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EDED1170E
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469377360.2590.10944932100011427800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c8939ecbfded83d2cdb30fb59c3e84d27f4beda6b3c07a0b40f3f29964ccc7
Date: Tue, 02 Dec 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764693773
