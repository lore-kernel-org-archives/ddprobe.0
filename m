Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DCF155C87
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748585394; cv=none; b=UnPakp5qmR5jC1oRhy8lQUhRRnib3PH0RPpQLPif4TN3MITvB+IccB74rCDfgmq487a+9k9Z/Qzg+TKunSCogTcJHKZGBs1iIrHHOV8c48JVM6lEQ+743vt092Rs8uf8WCFgNNGLZZ6lbXsF3ofbal3TMeZjHARIEm8K8/NExX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748585394; c=relaxed/simple;
	bh=mg6K97dJjjPddSTgEq2FWWMUXYwpvMZU9ekYzNcePmI=;
	h=To:Subject:From:Message-Id:Date; b=QzQKhPWXviuO23Ozo2q8VGUU4xHwGzITksDGGSjB78vJXNG0nickedSG8EMgYi9X4av3PgJ35el/xwkGUq8hoOLqEYBi4X0aN/0nzoTLAWWvrys0YxX12SXw2TY5md5igjMT4Jw5HaGqATzdwBPUcoWvzUB+LGfJehkpwhkokKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnCpxJxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnCpxJxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E5BC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748585393;
	bh=mg6K97dJjjPddSTgEq2FWWMUXYwpvMZU9ekYzNcePmI=;
	h=To:Subject:From:Date:From;
	b=SnCpxJxZw7hq0mBDS15MlZ9N/j2PQ3Cg+25pGWnDASH9JjSZWUrTzzc/jqWVoLYkI
	 66nYZNyEP2Zrss2yuxlm5OOq0N80FltkqlRMbT86t00JbQBc7VFZZ+TQpgnKNJTpLI
	 6Ft6nAuqmE+xxrsPa9HPsFnJ2CM7GopDOl0tYqAlC69Wj4bzwCGhueY3F+V6qWxXwz
	 8SqPVFAtlRpQKWu83E075I6QdT+EN7NXA1i834B3JDimG/auV5t1gsspRfUNhwUZzQ
	 9Y8rBLnaYXYEAhazFiZd/U394nLw/l0ZHFm7NHYNncUzkd7SXum5XCSjCgP+C3jYKl
	 ZHNCD1gysJRKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C5C54F30
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858539357.4191.15903257608300340137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33876816648a792ac701df2e201d280b093fde5ad7ea4289feceb227f78c4919
Date: Fri, 30 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748585393
