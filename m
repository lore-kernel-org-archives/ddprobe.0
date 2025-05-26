Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2190714830A
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748289594; cv=none; b=Vw/GK3iYa+2ZXVuu9gbM9+s+yC61vpgY/wRFAL8HKyBGgdogguiP7uodqAYzQWtcf3cZY/2P02XxxCrCidDZ9+ZjjW0uGT94Pt84qFk4Eir2MuqPVtr9kl1PZ5hLHba7Nvpb3yArxYHQ0IrLWBSOQblHxOZpg91TYudtw/1eUrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748289594; c=relaxed/simple;
	bh=QKgQ1UgJWJV3HX+dada0i2+p+GZWsG/yPeJiNzmO0kE=;
	h=To:Subject:From:Message-Id:Date; b=NfTswKwczaK7hBs1Q8pD2+rNIbG7X3WpUdHGM+s/2RPZwXhlgJVV6Q1aNejc1ylo+OCkjeB2G6C5qDKGPxNPhNkh9ikVw4kC70RqlBoMpnd6yxrz+N6P4F8ngAecMtrKnfdMFwFGyHFu4UYOx259vkWTh++3e7abtQ5qZV/fQT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkMQkZvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkMQkZvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB91C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748289593;
	bh=QKgQ1UgJWJV3HX+dada0i2+p+GZWsG/yPeJiNzmO0kE=;
	h=To:Subject:From:Date:From;
	b=mkMQkZvAH4ujo97soD/D+Nlo+5+mgBa9NuJfXkI+rC9WH2IkgBNAINUc7oH7SQTzS
	 oR+tTPLIkobRQjpsPJRFZ4+sLUiuhg4VqDvSVDGQtP4Fh7aJoFdf6nZprRqYhU/kHz
	 KB4AVTXHHeVH/ZLdGlMnG0HpoedsW5cj72WASLNKvITxEJNqQRoc0h1esrCJRky5+Q
	 p0QjGYweho+9Hh9xhJ6MS2ysWGi5CkoL0jcAARNqmphR8qYZ0UzhwFix48ksfFHkCR
	 IwWeD2rcyf7nSoAy3XvRxvyHlxnBoXt7Z+LUR9DE2sHXZlvnP6sJYkWIn5Pts5Vgc2
	 QBHp0MdimugBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF77C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828959357.24511.5818262778016252082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13a65cee65813e4b67e3f9800ac79426791c594965b8b2142373f4c1d7926ec
Date: Mon, 26 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748289593
