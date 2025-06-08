Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A41C202C49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749373794; cv=none; b=khCjJlqk++sTBWdkOETUsqxkKZ7zlcdmYhcFy5v2BUgADFnxLIqdQkz6kpQSLMm7Fx4I6mZTAh4NBTwLKmnU8+FK2vst8jKkgpyr7GD5AD3D5m6f5nTUoRd4fsFSUVleQiwpEfjs8HgvxocA9DtHA9eYvP5U+kVARKD3xdSjyyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749373794; c=relaxed/simple;
	bh=DK7rCYqPnkI3OZ7lqhq7QX0Wh18QMjaAbkkS2VHzpq8=;
	h=To:Subject:From:Message-Id:Date; b=ll5vy1JFYSaTxxcQ3Sum7kNhBp/m94QhXPPtd/aewzNKE7hNRA9CAtJo218iutHzc50SQSzUsROB62NCkXjnlwlmiv7C6tPWMtkuTpeefDJTS6lU/xP53xkP0CH22IhMa5Le/46T8IjbJXsGxZSXqQLnKkCsI+w4J9tPPxJyWAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oyl0gRs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oyl0gRs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73CFC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749373793;
	bh=DK7rCYqPnkI3OZ7lqhq7QX0Wh18QMjaAbkkS2VHzpq8=;
	h=To:Subject:From:Date:From;
	b=Oyl0gRs+IiWaMIN1VthTxDUDgU8iXk/He2xwxJwzu6zlJgE+oUYkBgntsezMbGCo+
	 6aDEW7Du9jjq4YHEr0+OghPClEBWRYqx+hJ5zpbZ2OcAd6qO17IS2nzxhPkjqOGCG+
	 3yR9YKRsZustxxZx7M9BIpayXTDu068A9MObMkHVwA/YlFLi9Pz7CWyP0Fj6Q+J43A
	 K0la5mzi2Q4FzcsCtV9AzLco77V6k05V7R/DQRCqifbxWEeMW0BXqUrJIHFFnTlkI4
	 CVLjaxwGQc+2B4Q3+TjNEGxYmtakdtHLwWs6vBNn1ZgX5o66egY6JYD6tgT8wAkjGx
	 CuDNgBErQ89rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929BCC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937379357.31325.13793187066694937106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed697a71e23736637569cf626b56847f3decf2b89c5a208cddf94cf3000c0dee
Date: Sun, 08 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749373793
