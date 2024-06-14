Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BCC19ADB8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 19:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718393903; cv=none; b=g1m5Rlxz3+giufAcLPpvbTnXlUMvAPj4OQtMC29DkWV05BhHrBCIsMnWGZu0Hh9605iooeH3Iug3J+/NPuq5FPb7lL3HpjFMxLJgI3QQTP3zbYf5ZW+31xx8zUYLrDy6cm0Pc+enrcrOSw7vGdj9PDxU2LkxFvqp80FVzPZn4Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718393903; c=relaxed/simple;
	bh=0+jwRe8bQTDZUhgsJixix8jwemAWHVlIz/vryp/FKhA=;
	h=To:Subject:From:Message-Id:Date; b=HleCLrxy41JMsSGOfqX3PEw7RKmWZwIUXdfBBfTTVbuClWgzV5Ax1o95xSa3Z5YlUkZS37HGpR0BPRYGfHetRygHPVh4zPshEhMqGRwyecL5DhrRKlrjgeIJXz5XpW3if/IwfhqZX647cm8vCfLf687lpKpurioH8JySGxmp1lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/u1eZDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/u1eZDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEB84C4AF1A
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 19:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718393903;
	bh=0+jwRe8bQTDZUhgsJixix8jwemAWHVlIz/vryp/FKhA=;
	h=To:Subject:From:Date:From;
	b=s/u1eZDHqwV3V0b/yYWKXXKavdUW+6zsd6WmtuPLXq3Be3gD1Zj5G92RQQ8ZiD9/K
	 2aPnL+yuV2P3M6IMGgsmvX/B7wLOmA9t8h1/1EwbI4EpvFH0JE8hNLTkfmmwD5RBOi
	 +Bn9yfbgKPnpWTsRkKggHHw6B0TR/jGK7Esuyiy5nsZ/qvlmKgnpDWGozB2Xnj61ut
	 tcvo2k0pS84izInxCuqjnVgRT9cJbPvFku6LZcyldc+WBabzfRK8XE5sRwpURe6tNd
	 RmOa142A/g3qSjFfbMchAw+RdWC1zrUenKZuaCE0Asy+b/RqXrygJg+3hP3ICct8HA
	 p5W4CT9rQ4o4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE90EC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 19:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839390283.6797.18240721599641791969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e387ca3b5497e7459f10dbc65dc9e9c93685f0ec0ea8c0bfcf8101bce8d0459e
Date: Fri, 14 Jun 2024 19:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718393902
