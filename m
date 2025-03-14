Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398951F2BB8
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741995534; cv=none; b=oK/y4jH8kB2TkDdTJkUciWnTQDGX8x7yJhWZjCe1bfjjGytUfCQagYF9p/f8s4gZD2Uk/laBq/TXB4R07FGFR/ktXzulQB2UD6m/NLXFSdekU77zb/DS0tzbL57hdXs9xeHSCOAK7r2h4RhBU3kYKMiKuO7pVTC++Vwb99WmyI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741995534; c=relaxed/simple;
	bh=kxiApk9moJ1A/91BsJZj4hCppiBA0oqvAD1cWite2+o=;
	h=To:Subject:From:Message-Id:Date; b=E3+fML7tIBxRzkKYzomv38SnlCbJmefBYnTFtkTa39O5OUaAkTrc9JApbHbDeI79TDoDfU2qxKv3gtx2C2EnOvAM+hOQfAJI51xTV02j2SPIl6fH7TGix2kTNLIDeJCMPNzAJWGP+K6RIgsb6UKlOVTp3FsY+C4sZ9BvgqriegE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpA3pIzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpA3pIzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A863DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741995533;
	bh=kxiApk9moJ1A/91BsJZj4hCppiBA0oqvAD1cWite2+o=;
	h=To:Subject:From:Date:From;
	b=gpA3pIzFseXgCzScrN9r9JsLfW7WG+01ktTlClpflodSfR614XfPqpQPJGj8NsOjV
	 YQrq17qNbq2WJetkiNjEIBfz6dEIUI/fJJt1aWvkpvmIaTNb3LC34xaxK6aMyXmTuC
	 gJi3iym/M7x0bh9hq3rjVHS8r7XS+dvoEGAyVt1wg3w4v/nh+eA4XsWjC8ynFcgXjn
	 yll/e8YhKmg14J69ERqsnqsLRYjvfFXydp9VdDo+hA9x29m5jAK6IyG1R2EchQQQKN
	 x8xJeZWUBYCithYJEeO//PcPkejqwrQbHEzCME80UMiK7OHa1KVVmMv/O+/oaxWdUu
	 3A/v30TuQU+Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94477C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174199553359.12089.2554502479173898293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ae54824d6af38a59a7b0466f1f35f37e1c9ab2f9bd7bee70cef156633a2a03
Date: Fri, 14 Mar 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741995533
