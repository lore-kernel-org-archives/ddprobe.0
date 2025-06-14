Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3485624C692
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749922794; cv=none; b=C94phgBGfXQeAHGH+XhCaNEaSVk08D1olqm4bCHTB1yIMBbDRTbexYKp8QZR28lGVdjc8G+Bve5Iru38hWi9xDV85UqviKkOKEkK6AAwE4zVxT2IA6LyHu75b/JkzJQeyymFK+zT8UwInSdO8ZP8YLRZ82ZYgleOJ8vUr0Porio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749922794; c=relaxed/simple;
	bh=6JwEMzGYfA2BLPGLTGY9QBMllcXK1WdOLGASy/iJWz4=;
	h=To:Subject:From:Message-Id:Date; b=idtrx4Qtyb27KhOU+n9+WLMABiNAPIayeO14+fB1adStLNvo59gyKXlfvqLOYpTp4cYk6i/Qy+/LA/Ps5GVzolGfFD/3GxLpbPNvMasZt04jv5VUc5OnXRag8yzRshYTZTcEY1gateyWDrhU2+oKqGVX9L4H8GVEosSuUktDVLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zk6phwsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zk6phwsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93E5C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749922793;
	bh=6JwEMzGYfA2BLPGLTGY9QBMllcXK1WdOLGASy/iJWz4=;
	h=To:Subject:From:Date:From;
	b=Zk6phwsS2w9nM1vf6JwkF9F/3au5TTLJTpwx4XvLduSyXqXlOK1Gubt314o6A9f6t
	 FRMtI7iRKPcBhR6gBAwqYUSzyhH6sSSbERdOE3urqWsBSNB3RQqGmkrq6enc2UqHHd
	 wk72Mi5kt0dlS5jrFuqLsxHV3Q7ppJfXlE0wJFO8xs3+jiz0iWIOHLPhTo1o+uA2qm
	 6CpMDVBNo17ZQr4TT2JfAoLCpHJLPH57xS9/UfyLOsarYU9r3B/2F0wp8jJJldv9s3
	 joYrOQGL9pxGxvlkroh9U8woNpNhU7pbdhaMxJsn0sw+IGOXVvkdK6zoqDBWZdQpVX
	 7aGTWmv6sfPzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A3BC7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992279357.27502.2640626335912124061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc87fff5ac7118914072f9d071ad94e55c01141f72bc6060637c56b6a1ff39ba
Date: Sat, 14 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749922793
