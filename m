Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F8A478E5A
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787059834; cv=none; b=QYdHf2Yt3P+1FNYigTTJmQX/nGLKi/wMeMNr0iymwf7NojMW9V/IvyvWGvBVDmQlC6PcbPCjDsfhWaqzPpTSdNGpUnASw5HKPTqs+jSnrWPi0LXzIN6eIeHr0cIcCulR9qqwXB66M1KdiF0ZT2S5FnhlDJOk1Wj1PnM0KaKMN/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787059834; c=relaxed/simple;
	bh=aqQHslqEwTNuICt1+H2mEwUaVb2tOWLlBOzUWckQ5nE=;
	h=To:Subject:From:Message-Id:Date; b=E2tZnACuLziSIRaIeu4I9DkiqbnTFKrXTDEhyg5aSWMcgAXxllIXjz0aNxpjZ/TLzbWhvL4Y+lXkhH/WhMLUMc1BQeFSpVzO47w+3++C651ep/EIQbzn3n5VY8/J538REcY0h5zI8JO/9jXjTvO6j01U5Jz0q9cwbILaOavQ8vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhUHXNUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhUHXNUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D080AC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787059833;
	bh=aqQHslqEwTNuICt1+H2mEwUaVb2tOWLlBOzUWckQ5nE=;
	h=To:Subject:From:Date:From;
	b=fhUHXNUe7kaIyH5+x9gk2RJFAXTwJLWWEgu3uN5XQGqifV9n2IcT+5iKbPbPihxxq
	 cDMa3srossR/IpKDKtAgUFtYwXq+a95zqmPkOARil3jNOq/cHIN4lR/zjU9/3iTXnd
	 fVMfLraw6HU0i0sfB9ZMpPPq/7gE/KWCcKdYpC/1LBIvm/Xb8/DN0HiqQj+OHqXv7M
	 b34Udgp6e/6gsNkXZZ9EfmGiBOVUpmruvRXrzRAotiLKsbRtgLtcW9uj3wey0gwUb9
	 Z/0WOxrvuni/QtdHi772fsFagi4xHvKWFeAMzK4VuTDj2YNxZQmiZFxjRRGsiji0ag
	 T7k+z/JOHgg+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBBDC5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705983369.3052.12264383368343206747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c89d1cb547f69ac0f0bee6663578070465ea6794244b6322c73f8839785928d
Date: Tue, 18 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787059833
