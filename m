Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0DD22F8EB4
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784312914; cv=none; b=cU9ckwwUt6TQT444U9kI7m4R7Du5fn/DvEhqlRhFr6OaB3g6GFXLH7ldXtBsRNndrZgLuO6bmjgcOruWsQFh5uC5b7YYsL5sWL9IGUSUC4NpUTsAGJ6ZKNKZRSF/53iX4zzV/MM3zb1UXfNjchStpq7xfm0qhb+UblRAVlfgt/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784312914; c=relaxed/simple;
	bh=0lg0nOUiXH9+qH5QltkNkkgqBM1WsohfC1ZCfPQwrTw=;
	h=To:Subject:From:Message-Id:Date; b=cz6PdvbUsKBHsOCKP9oy/Zw8WVVHBHJ1sklhDbs7M56hHEYCbSfJSCJ0PPMjMo6ISi0eeNKgRkujKkZ78uvtXL9kl+D8wei6zSZ2s4KLSdaGOyurK71613xUzS15Aa210dpRxuZOM0JO06s8jX3FH84wWIubxmU2+hSsMcs1L5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H34cgdob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H34cgdob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3D81DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784312914;
	bh=0lg0nOUiXH9+qH5QltkNkkgqBM1WsohfC1ZCfPQwrTw=;
	h=To:Subject:From:Date:From;
	b=H34cgdobdm/+dEQXwHAHtxXcl6zr8IWAjBdYAVcUczhxwdi8tyr+Duh/m91f5Kufd
	 iho82zVxr0ge28a4OZ9L8bJHo7xgKkl4ZE1goV5iMPbYQUq+91SJYC9iCHwwGEafx8
	 N/yXlcOmLPbB0PcGhY5s+woH3kFc7xb1q+SAg6hUHQC2KOviRZjBmy9+86L2OdARKa
	 e7Qa5Ism8+DzgZ4B3u8d0UOuU6PtGXCisAORilXNgUgEH8xZVcyFHzjti4006CgRl+
	 nSEfJBQVdoav8rsLB3PwzSFuh/bozvXNvuty+Z5/Nzpd9ITCbmo6wqmnRora9Gky/3
	 TtX8BtWjPfYbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA76FC44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431291382.5907.15062938367158430636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ba46710a1660230d8f19c1f322742eec16d28b2e80f50f607f9b873ba9d728
Date: Fri, 17 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784312913
