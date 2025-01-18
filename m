Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDEB3398B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737240954; cv=none; b=deoHeIZo6xXrhH+WbR/fzCjBhId+GVgphHVdYp6vtb+ar03rKTj6AEaFkcClz+k0Xf8Si6JgwTdPRNtepoEpXVuu4gucVszyMMr03kStSzW3MFE6XDXTlThNjOIxZCMBR3FG9GMFGi7H8WRgZoIWZ/fysono8HLrmIGCTO66ra4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737240954; c=relaxed/simple;
	bh=jdEg3yiDsm6pesdIh9S22Fq+8UTW8Oq/+9Bi4DmLQ8g=;
	h=To:Subject:From:Message-Id:Date; b=k1Id8x34lgywytcoTJ2c7eJ9vSDBLqmvStxIFeAf9gED0MfiWs14xfJd5cwdUuAnLrSnSHeyYxH4ck70vGsnXzLts+6aGX0lj6I7KSjsQeSOMAjUHJ0UIy0WQXdkTqD/CyuFWYqomSTdVczY9bhR3YxG0TPyOcP4LRYpf6lTYIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9+QTQxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9+QTQxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA5AC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737240953;
	bh=jdEg3yiDsm6pesdIh9S22Fq+8UTW8Oq/+9Bi4DmLQ8g=;
	h=To:Subject:From:Date:From;
	b=J9+QTQxA9SXng+6fo9s6xbOYKOE/HsrpI3mUGTRh9Qw4FMUGpWfqtKTdRILmAF/EV
	 b2AYIeTG80ro/w7If8IwZwqyB+77Mi7fqPR+9eSjgdQWiC7LD6gEyYZTQvl/tTy4/5
	 nHmtU3wq78qWZUAukJO5P3tGXYInBvUlEdgcfhIVxVP4yZJqooM3fyGzfi8wK9k3wv
	 9Kl51qjflKxeEOLuq2mCK6Devj4PW1GhMnQX6+JUSA6yZ/UzlfIWni/n2NHY5yNlnU
	 6/81aAEMPvnOsU7NEmtIfsWDoP9tkIs5XpV8rwrvqpb3UhBjnKUO7eTZpyEnxGjrd/
	 4QrcZSmendfZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E315C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173724095360.13285.7872810821298201465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7378dd05c4002bf5c48c2ca888973c6c43035c47e87063a57b5d9be4c44104b8
Date: Sat, 18 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737240953
