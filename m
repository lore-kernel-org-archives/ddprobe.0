Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E202DCF4C
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773992094; cv=none; b=ecHaMkb1fc1z1o6e7USyousH5beWh70T5vULUtHhyJg0IaLPGertXUgvnUJBxEmufIYe18AVJvxKMWL/1hxUmwLHqSOOtREbc8+efZGvA54Q6GsDK6RF7JtRmStm6LZ4j8zk+00JIcbr4OTnP3CI/jY0yD6ffyCL0JLNPG6d2tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773992094; c=relaxed/simple;
	bh=xc+/CzdIYKz6FL4JDE4qXZiiebTtD+YlPV/LplFdwhE=;
	h=To:Subject:From:Message-Id:Date; b=Iyq3HBQ1rAcxZg3MLwOljX46iLg+UmuPtuobIZdgw9Ejsyc/kfay/QhQoqG8rJJqHm8anhVn8iM5vLZES0NRM6umB+11tIzVwGJ2cPLzhz/EA2J7r7RUQxWTzLX+qO/+2tRWGm00R117lkg/vmoCUmJ4NbnAcfJN6EKOWIE1+/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTRusYhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTRusYhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDE5C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773992093;
	bh=xc+/CzdIYKz6FL4JDE4qXZiiebTtD+YlPV/LplFdwhE=;
	h=To:Subject:From:Date:From;
	b=XTRusYhmH+2cR58detwjmij6KaaRyLWOVYGUdLcCcAT8PevxlTNkhcoGDOjJKFf94
	 S/vQiXeuy6IBZCWOemfHMWgxzaUYYeo+MP8yIp0o2CIYBxB6Dqzr0iqc+DOIFmgRD4
	 8/UtebHZ7o/pax+qAr1LU8RorOKaJzSft2mPHTKsih/v3AhF1Js1KwkxBRRpssYN2k
	 IrjE/iPM2g/AJ4I8TquOcQtRjQb2qFQ76Lqz8aatc9SdqWonAbLumXHObSvx11yJPm
	 X+gyY7HpVHrAS1wy8BZtT6UOHlxRkdVwdeC5sBLMOTog6AWsFqYMTRgGeTalzBo6fX
	 g/Wt0ruHKwlVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF3C109317F
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399209358.29997.2381536185940365577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 175cc7d2e23a074328637a50c7609eaca583c1e753d84d2c40c03ceac8b1e9c2
Date: Fri, 20 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773992093
