Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDE12D9EF4
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767908634; cv=none; b=iHO4vo++YoIO1eL65pLTBRVZ8FN/WwcTjhQa9qN0z5RR73Nul3nbY1g7J+Lc3tqvFr/HeMkZ7UE/hon2I0sMn2e1A+1nCo8ykCzVb7M7BEaT5rBzy+08IldRokj+XqRNuWKiOKfhuJhmKlr6OcH51r+VasYB6ZcUCGzcZg5+NvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767908634; c=relaxed/simple;
	bh=cKQGwz/t34suUlGfUjTWv7u/Xwawj9pLAJu30cNSAEo=;
	h=To:Subject:From:Message-Id:Date; b=jqSINsnAPeeLOj1ItfPPSmu8lP7FPuQhe68dHjtXjPW1l1PXwdSZQaaT0gSh1pjGBiSHf863zhJZJ8F5/tc+ljlPfUkynzm2NcjoJGK9EPq1KpDM7bq1Qad42NlPVS1Pfsaz+yyf4tOISakEZXZLHa+dDLEQR+FtKwGJ3DMEXB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqHe1gX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqHe1gX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91D6C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767908633;
	bh=cKQGwz/t34suUlGfUjTWv7u/Xwawj9pLAJu30cNSAEo=;
	h=To:Subject:From:Date:From;
	b=mqHe1gX9+t3aYRvFFBNXRI7xAd8KNC5amojWe3TrAwlYvJTFkyYBSraYJgzXUFSnv
	 DVtmqvAaUCFgtUawBWRIp3UhmRO+wtDIn7ZmYuebM1V9UYfHjl8T6r3ZlmWq3o3czQ
	 GfdS7otz3UeKCWyi5D2CFQHi0lVAQDYBaMGXxz8WBUSD8nBPh7ugY7McPnGjntoiNE
	 asqwlotnMD52U39r3Za/LMWuXWGQCKd/lMXTRonsQJN4r7ivljBH9CpdiKPZ30Atf/
	 HBRiFxJFeElS5kWqy5xglku0gJRRUzh1Ny/bj7RQPuXjjNi0cRiTfjfb7n2v9ZScmb
	 v+IkAnFJUt5Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97534D148A4
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790863358.2135.2357227646684335119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15298ddd1ed366683177a84f29760aeee313aeb9cd147e214f6d151246de96d5
Date: Thu, 08 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767908633
