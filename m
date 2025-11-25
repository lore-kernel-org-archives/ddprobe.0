Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A64C13AA2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764055374; cv=none; b=HXRp0Tm9y8BmhrafQXSckFvAPkVBAjVTNT16YVilWgKFbIERdLpbALdtDd3nTeNPFCkSJlomWkALMfnTlUJveTKnKWtoRZR0+y8McTws/kasPG1Nt0/Ha8j2J5xIZrv0AJkmiiEWiIZJw6inWtz/49BqIQfZYJQRnHmkHJ3NU4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764055374; c=relaxed/simple;
	bh=ax5mOvl/kgyZ8RRJK0ybbJBZdNRPeRITTuYu6/WC70o=;
	h=To:Subject:From:Message-Id:Date; b=MPRdbYoh8IX9Grn20J5EXF971l9PieNzOH+abLB3k35Pbn+ZVSNd3DlGzGO1ns4xeIiwGKFCQecXmPY5buFWIYXQnp4uuGulkoJhbOYzklGYx7o614JVxETcQT4FMjVdElDUhKQd1pFGYvr1dwXwJc8+tX3vAuBneE/T0pN1DdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPnMqVUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPnMqVUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A471BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764055373;
	bh=ax5mOvl/kgyZ8RRJK0ybbJBZdNRPeRITTuYu6/WC70o=;
	h=To:Subject:From:Date:From;
	b=hPnMqVUXWoxm1QukEHkcBBHrCPEYgHoNDK1lqZk/Lp8OgF9H0KJ4O711uGBmu6tRA
	 Z6Vo5Jjvcp0ggbw0Gmi7oG+Q70ZxxTU++XcIswxJ599f97nx5jqvm+v6JlGvcnQrPw
	 qa6TOfot7Fs+ELnxQ9OXjevLkJsWkiZWzacqD4OPP5bjJz7556ksAy7NdpK9qYhJyi
	 Ke+LhNeSMd8tW0Lm2SJ7QajGMCLxIuKZuAWWtXm9oBaFfUi1wS/0ef7rH7c5DX1L9s
	 hR1Si/HX173ZE57ruk57W5kOlz8bfGXUfxoIRt/HP56s3WkQ3ornQ0YPbypl5hGJip
	 0OtmH7areAnBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B3DCFD364
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405537358.26292.1922297690404140966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb66407412c7b1ed3b197577bf2df249a3d55b3bd1c20fa12555cc280d601966
Date: Tue, 25 Nov 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764055373
