Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBFD142E6F
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748340594; cv=none; b=Fo685Uh2Ukw4FyGLUkubYGe6tkZLIPct4p/0WIvQCjSMNcc2qfjJqu02SftWveDU0iXrH/rWlXNKptpYQgPvxf/tgdjoKZ4hwfxh7OC2lk5JfhFcwvDFzBWuDU467Sbk7h8V+muNI2mUFKDz+a0W18KfAv8Hcj7WAFseD8pPGec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748340594; c=relaxed/simple;
	bh=9Hbps5XkjJfrroi6exzcqwrRb5Se3shnzYsmp7rXX5M=;
	h=To:Subject:From:Message-Id:Date; b=XRUMGnJiY2GX8hFtDx4MooS92nho+nrO8H4PpWfj/NW26aEWOoRuJrY75rXWdMg8dPptWGjGbOeXUbJh4OhB7L2etyxPnD93MGWro+psSM/BDe7ZMdTN9PQyhJIo+tjrMeahwyqWGPee5egvOyqEQAOo7RakCzlLnNydBQWcZ94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZzW4jyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZzW4jyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F47C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748340593;
	bh=9Hbps5XkjJfrroi6exzcqwrRb5Se3shnzYsmp7rXX5M=;
	h=To:Subject:From:Date:From;
	b=OZzW4jyELYfqKR3RWrc9hWnpR1TvhB9g0FInc+ZIIJTwkC4vYKZEW81bZCxEqqLZH
	 t+EutWZoJccfT34PcAdkb5uHonfOTbamIl3rw/roqaa2ZA2BT3tz4p828plXmm5wF3
	 I0hodWXdf8zQuCqj7q2tsCK+WFfC4Ov2s/52HH+DMS+zlg3Qu2bQNWE1DMJfNuT2bb
	 uo3aRHOSUBKf8P9e6F+OGjZy8Kha/uuiM9RoHvvnnauXqc8tC4HscLi16dIOebmWFC
	 nEh961t6mIQ4a4ic3Jbwx7o1wkZ4BWgQLBbw/VQVOjA8v6bGjA4/luZFnlHF6vttkB
	 R8fn0z9Zucecw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B2C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834059358.26933.2909174287203184501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ad503c05382e7bc7bce19786db82e6293e7b191cea1221e10fb91efb70ec78
Date: Tue, 27 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748340593
