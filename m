Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1F313AA2F
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771176894; cv=none; b=ahhzOfjcYf/x7ZuDXjTEivUqO2tPyoiqUD+UKeGzFnGQ2ajMcM1ExHd5zlmEluQgkP52ju55gA0SsdIlshrMNEL/FEkiTNkICQZzKvQmSJUuX28kkiDRYIjFBZdoiZhqJr1DfZKZ/4SbpHjgYO+kfi0QUcGRJa4o0OHyL7gsDA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771176894; c=relaxed/simple;
	bh=7tnYYp7DNLEcMtsQDKEGQjo4iZTatl3we60iWtL9bxk=;
	h=To:Subject:From:Message-Id:Date; b=MVuk3gJXrATLY7PSjxMvbILjLXXLhXORut/Y6f9XjA4yQj7IfPP6O0wDTEQyi9PpM+z4gtOoJATXlriH9FAt2ksftHJwjWzE4Gy1NTCnJtBv+JugaHWDjk6LeZ7Ri8gZboDcOIx6LqdPG+CyPpmYtwc5nUY6QoH27tWluSkw4tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOkQooaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOkQooaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09E7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771176893;
	bh=7tnYYp7DNLEcMtsQDKEGQjo4iZTatl3we60iWtL9bxk=;
	h=To:Subject:From:Date:From;
	b=XOkQooaMVXr4jUdvaSCFjTUiv7TgSE82m6KMmCn2FbxGS58ED/IrRDGZRxi+gf9Hi
	 xP4wxYlrpHupYcjf6y9GJksHeNsqCR/TapmAYf5fctVB+OrMNywAxuEgmgPdih6Ysj
	 CHqPb9qkmJIm9tQPvDgNLtSeAZtT88oicw6OO3lLKchcIxbILlrthRo+GrKdeiFR4U
	 dRVqzp1Uo0YlFlgskRFyqMD+9C/wzynCSw+/pB7t7E6JQGVzqbEOSBw9ybkllqZW/c
	 6ZG5WlTuK98G6JgZ80TppN7d1NZXg76s1lYaf8D4toJfUzY9tX4uqV2OFHLc/WEkVt
	 acThA7xMR2UIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A42FE63F07
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117689361.12650.2394083028590955058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e355845f4fc153c784436df092e0710c43a7071635c6f567e9b76bb5447137
Date: Sun, 15 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771176893
