Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2C01AA1E0
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743118795; cv=none; b=pjpQurUkT4Y0OnTaympuvSe4uyPmOb4w32RHSZomfE4f5HJqabY5j2CNLwAMorOun4iVt7GwGsMgrsQgI622ZMAurb+Ja7RATARgjZ6leYvdeG4tBBcJbezMB65DrRDTwPW414eFqRhtG2WkVZeXI4kZifjKAXYXzDWUy4yAEuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743118795; c=relaxed/simple;
	bh=G+OmWFzzuea7vJZWR+FOd6gbZ9LIq9LjZjd6aRsS/PY=;
	h=To:Subject:From:Message-Id:Date; b=KH2l0PUfJKvV5Ug5R9B2hzsV8kKkpF+ocQXwLMy5sXgp0+1VWfr7dZKBKlAzD+Gr6URo3jMEMuqHHVtJhdybuVllQRp0I5ZDHtuPKwnpjFhFgDgeCwyv9wYmHnOyKFG2GirZAjNdBaR8N33rUmUFbUsASsUEe/iAqz6N5pr5KOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4Yekm3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4Yekm3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCAE9C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743118793;
	bh=G+OmWFzzuea7vJZWR+FOd6gbZ9LIq9LjZjd6aRsS/PY=;
	h=To:Subject:From:Date:From;
	b=S4Yekm3iMx2fC6gO2rxu/FmE/XEiwcUTvIPRE+JtrX6DlyGmBgYq4t2MboToQXcvj
	 OsG7fxo4QX98sBUdQXjXKAYLpZeqwCbasPvwXnkcbBobx20iMugov+oIcNSbLIJSIp
	 GufvV1H1R3fM2/ySi7y7FAA9m7gGROn3lwq2h421L6sS3MbthR6Z10adwVzjyTi+w8
	 AWzjGvL3fgR5riGNyURezTFcZoxRxGMkYhJwFgnpl9IV9t6Wu1byFoT+nQ2r1E0ycn
	 t0mf1g04AK2PKTFgw+MGYzEeANg3r4uJeeVopF6qQ9SWNND7kBUL2CV8diZnvfwNtO
	 beCUGk5BkstIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55E8C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311879364.16595.16723236234705310207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9269f7be6073abf5d926d324eb417ad1b74542f5f75bb4a1ae6e87bdbcdc6908
Date: Thu, 27 Mar 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743118793
