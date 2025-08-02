Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED19F13B58D
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754161794; cv=none; b=D5QabLLm8Ksg1Al1MdYvbStJuP6jjm4LYBD90rErIt7HIdzm4qh0bCJlq2js7mu13KgrmwFSUhvIwLu98JNXaad4wtarXAG8RqoTgw1hQ7/Zlm1+CZdORloiN4sLtbe1UkSwZVKj5cPjdk6zl1v0cMnikxDBLtkUYioD/rzWCUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754161794; c=relaxed/simple;
	bh=iydB6h1NlzFX1NsUyLbC/62KBECwJboi8ZQjFAt+B+I=;
	h=To:Subject:From:Message-Id:Date; b=ehN+OkQKLhP8Pm6EZO4h1x1551/l09u2YRnqU3AUXtP4Z1h2gMHW+xrwPvpNjg4ttyHJdQ9telkDceTtUv1PVEG637ZzpB0A/TriPaTh3Hb6zP/B+3486YsvlCwZSXejT/juJPyzNAB+YbQgeN6qhZKOA5RuJIM6JkSKgcCbpNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLnvDvZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLnvDvZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D21C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754161793;
	bh=iydB6h1NlzFX1NsUyLbC/62KBECwJboi8ZQjFAt+B+I=;
	h=To:Subject:From:Date:From;
	b=QLnvDvZtmQ22LljM+SaKNleJW+lS/5LdXjgwZ7TzseanbOPQZ3nkxvevz7kIJm6xe
	 ZS3RyOdRRwNTMjahC/02vm+MIg8cBt4dewUDO2SdYbTBf7nXDttA6NmOk8VcRFvSdC
	 CJHm+3PGZ5EjK9fivKR/XXRAmJmeLcKvQY9NZBQq0BqiwGG+npULK/3zxlZaW84Azq
	 9/lXhycIRbQEEw9oEFFiZxavWBoIImkxj3XwW+Rw16m9WJnobsBl+TtkV45YAM3PG2
	 J6Ci5vmZ730bhmDOSTfvlkD0TMYh8Bu23aEekz33AxJ5Snr6GENXvaaJnrdlqq7cRh
	 pjerG+YijT3Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B86C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416179357.23910.3182452636471875427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc06442ba199672c9f459b3b73880f8760e4ac49226c60b397f38a12709c3046
Date: Sat, 02 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754161793
