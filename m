Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C62F2BD03
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755979794; cv=none; b=g7FhQk0eXZeXtrjAEmAac12nqZeBI0c+ncTjelIphBPnnamGTd+X7n/vp5JZgTpRd/VuX5ctC9vzu4mj1SWYYG0mzj0rzeWTj4gS1BbaWlat6o6aLuPEVINnpEC9bfoz4udW1G1KAP8g+6lDQzg0ElgbyjtkvkboTDZ4BD+A4Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755979794; c=relaxed/simple;
	bh=u5b019SaJdT2g0QnCo9k2vd1DoTyT2zBTRRYIl9gASM=;
	h=To:Subject:From:Message-Id:Date; b=qZUb21Ia8J7fsGUUg9Be7zyn+Fh3FKxfnUq7kT58rrgFdUKMa8gQpDBK5E4QsA7zPue3/fc85vToQ9lgqSag6WJkjQMAeptdIQWFQYjnuhUgLo1RlC7GwEoo36TwBUamEX10VPtyWtyW7OHzHHRkt7iAPS9niKm/ao1GheM7VVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnLD1HvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnLD1HvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82FCC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755979793;
	bh=u5b019SaJdT2g0QnCo9k2vd1DoTyT2zBTRRYIl9gASM=;
	h=To:Subject:From:Date:From;
	b=hnLD1HvQ851HE8Usfsb2JAF0OhnyRcJOUDewUteFsjos1XDbIWWKbCl37qzZ0yWz8
	 PGN+VloqWZBVBT59WSOTaRep+9Q5TIIy0W38LlNQajK52IzIu87aS5TrXsAI4yAY9M
	 rhVkjP07/4z/Qac+7PMUZWQpDJwmA0ShoGKR7h3o0m+Wlz4he2vamPYzZNyKFNjkq2
	 eo71CINjHun7V6JMYG/Lw9TG/63ZAo6zmsnQSJ06Pc/qamfZdOCLmZvEko1vvVhu35
	 rnkhR3oeG8V8NgdxJjj7VGLmwUwi9SlccVuQ/Yr9cEctLK82a+Qrk2msHKzCKzmaSU
	 VmBulHqELKpKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96617CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597979358.24716.3424827003368237671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44d6f74d7fc594197492d09ae2926f745ede2908e5039651b8e3b7d71a291dd
Date: Sat, 23 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755979793
