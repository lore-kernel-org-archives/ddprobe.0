Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB523E9293
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774910694; cv=none; b=c23/4bnpkEAUACQD+ovxuQq6uKYK8RkjdImYzmj/U49BYjMdqpAQcII+3W3ufhuoMNyXYhfNTQ4TaXHDjTJKUMP6K7AaBNX3uh3fH35l/tj36LXwymWcNY/Zqz24xJQKDEv2Q0P44t0WAph8wX81tgXweRrb4Z6mzCp5z1T55wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774910694; c=relaxed/simple;
	bh=z3JCwxPfmiYL4paOFglfX3U+WMjVq1ziZTOrqHCrW90=;
	h=To:Subject:From:Message-Id:Date; b=ZCGxBBHE45LnUmvOE9h+uMMB9oPvoIhe5BXl9WjC6pBZcT6weWwQxZpJjz4zW9t0KeVr1dOBFedO72RGQwpA3xsNCUBGR+PiMKaH+csjMuefmUlpCCK+5M7BEFdbpj8Vkr6S0hcGmIqMlEgBgDqXHpQ2uu2qIs62dubzoQH7/Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oikGE+OK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oikGE+OK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EED9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774910693;
	bh=z3JCwxPfmiYL4paOFglfX3U+WMjVq1ziZTOrqHCrW90=;
	h=To:Subject:From:Date:From;
	b=oikGE+OKIRmF+Pov+RrO+9O52PijpR9rBhSvvnbMhN9gQugHAgvZYjLZCBG+Ey2N/
	 9xIRqn014RaPWNy5g5rXNT8jJvAruC7PkfMI1mQ0GT8NRdeKeEoAC+4fDUCG3241w6
	 Akz1uzZxcwxap0DXhlbfc00rXUxLCEgclwS2bdJd6NUp+dSCePlSB7hqYWz93Yq1pB
	 lOwH6IB9jV19W12T0fC2VlQoi+7r5ho5cVntuMJQZf9YMjzIg9dPjXmwAciz7ybsg7
	 J1ATPTxLEHnBpkHxlueQVUYO6MygHFfFkEja2EtnnBBi9Jw40/L7Rm4qpYbiHD/qIx
	 BHkuyuh7liGBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A1F1061B22
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491069358.14370.15119735942334711151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cfe163dc7884932bc86b10696864d38d510fb9e91744cebf3c629e4f3d7835b
Date: Mon, 30 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774910693
