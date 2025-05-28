Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327D8245021
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748416795; cv=none; b=btudZuHEsqgN2FADvfJ5yG0hAkLCd6aNT++gcX7jZvwq8QmyA9FUg/huzX+QzO18XrK+9MbDHFS4pEzApFBbEjN9oH4KCHo+jd8tI91PuLMCSWScM4dnfFbhyYzVF35keWy2eRHVaZtVFXIb6+hebqGc3ActWo+MeL3MuW8/+iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748416795; c=relaxed/simple;
	bh=6dxujn4Cub73ky+UESmSFFD2RgCiGpbsNzbMsq43x98=;
	h=To:Subject:From:Message-Id:Date; b=CBrKdSrnUppqgxQ+kHNjeTxImDBMsMg1hNOTwBYYUlt9s64wbXqdjzGu4cOiqOHAW8MXOFJBRjs7V4YQ7oHlZ4aDtaAswKlDGQO47sxTOjTeqyB5bEuDzo85aSUsUiZzknO1TbFfi/UOEAghypfZEjZ3zwcluWerb4uRZ4XHCtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1dlkIEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1dlkIEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EE0C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748416793;
	bh=6dxujn4Cub73ky+UESmSFFD2RgCiGpbsNzbMsq43x98=;
	h=To:Subject:From:Date:From;
	b=G1dlkIEgpMpylRgdgtMciJhwQgkNgkS89cly6rIUZ/2jXn9MgbkjlVZDxLRVh7EiY
	 l4iJzhnVJCh9a1tTa2dkltvHNlL/iycRO+A6hx7OXbFR1/THLAGgpSYTMzrRXUv+PL
	 fO5xcXySI7DsDI4KlXIYjOQOMHKQa1GBJs06CtLE+9i937Bd/NR21P+auDAjYgUl0a
	 Fytl2SR9aJFGy5BhqvWR0r7V9M0pVl3KIo2JO8XtOUq4D7kRJekWPd5WbT8Rar68eL
	 U63lZTXLr4M00yZw48Fj6JVtXWR+DdetJoyyJxLWWtw01nOXak60nfkBW6XqnTTFlU
	 ovEdn7pfEtGnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC76C5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841679357.32380.10632183252592748635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de909b91bcbcd40f7dd6c925eb42c5504358ec466aa66194706caaa0b912ddaf
Date: Wed, 28 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748416793
