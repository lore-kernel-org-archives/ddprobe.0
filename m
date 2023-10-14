Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5482F2770C
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 21:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awobOHHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2679C433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 21:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697320028;
	bh=7/jQWfY27BOhY+rsOsJn5Q9EeBxAq9hkLm9N0PHLlDc=;
	h=To:Subject:From:Date:From;
	b=awobOHHD+iSOuH3dSo40KwK7eaWxAExsHKUmHq1/+VztDXxmCW92VUmSxTjGS0awe
	 rtGehFN3fuVWqX02P6E/Y1o417x9Hld6JOgHRvk4PUzusUI/IcJs4oFefVhFoPgMOR
	 Lx7d2Aa9qlrwGYJ1a1QirQqHoQQzVMMk5vii+iQHCNr3LJWuHraOPme1VJJcZKiGsh
	 9bZ1YUzgpuXfZUroRt4tsfLLgCdinqF0oL9sc/8oLo1x51tOvK2zwge3rzyQehDkyD
	 7ZvlNGAxcH0PwTEl7qG/fZmAnk9lmm3NWE1rMwf/C7wNTcGvvX43aLu5EgV15JhHZJ
	 xe51OVEB1xfiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CDACDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 21:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169732002867.25939.4628275913199921626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882bd7a120789e6e1232dbe7049b88ca820d1897be8c3bf7746cf3e9dcd254e6
Date: Sat, 14 Oct 2023 21:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697320028
