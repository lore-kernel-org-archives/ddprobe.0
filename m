Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1C543ABC
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748098194; cv=none; b=OiHfx00YQo3wMGd6zYjp7TT+GYPmpNsbQsuBmTvp6JjSWsACWu1xPhlWoODLwccgG28GrRZZn/UP5JBpw220kj+kGLRVavfQ1DvXECJBT1oj/M2OLonf2F3+ZQr6GQLcI821T3l0EpNaLdRcs4Zs6IZuvBTecKmwlucchlvQMAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748098194; c=relaxed/simple;
	bh=aELe5A62tGjEBvJqggn2QOHRx8oU7r9urOqNR7FZ9MA=;
	h=To:Subject:From:Message-Id:Date; b=cm/4G29cYD9g0qEoIA1W6NNfUWHVrfrip40BExgC+ScB0gIhCGTPzVlMoDjZ3Sa74XftMNVyYY98/JK/ioPlPnek5xBPnoyQN+o2jxun2yYmhAEKlLFXJ/Be8qBa4ANl7FPbu9AXbBGnYXMR9X87fPCR9BBLMLpF1R/EeAliFzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZYXulLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZYXulLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05F5C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748098193;
	bh=aELe5A62tGjEBvJqggn2QOHRx8oU7r9urOqNR7FZ9MA=;
	h=To:Subject:From:Date:From;
	b=uZYXulLNHCW06k+hx1r1604FgR5YzsqeY9ZQUUdF6C2I4Thq+y3nlo8kUo+pObV5/
	 CbIkDRD3Fm5WRAAiagJJ0pJUqU7qKC+21SDN9b4FBsD/4YYmUiz4B3G5PgSNg0jBMD
	 NRbk2pFkNqctmqSMWhpAgIz5ellv42j3kqpURpCBvZPEWni4b0j2nYHGPCkd7T6DEh
	 Bv10HPyJQIMTkFKYblz+KOw+ZCWErJhc0kggRKe9Ivb7k40xDGX9gelAiv5RI0mJ/w
	 mYXWIDcjGOv41kjq3fwrw10G4BFCRUaDsgGvYf4efilNhwuSdJCK4jnmNOQ/Q+egJl
	 wMmIOjN98wq9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E843C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809819357.4149.4729372028972727812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60d50622e98476805fa94c525bc3db684fe5ee3cddb814f9414e3705a8ce129
Date: Sat, 24 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748098193
