Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2851CDFD5
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773455094; cv=none; b=jnzk+plq+7GWMuUhcfTHhQNoC0LNjdI74d0+eYgspy+uUPdXi+d1QFsLd4+R1Pluz4b1qHnEwmdLBi+GCzoSGMlWd5c4QUyokXn3YHftCwMdTNQBmeRtKwaVLrW6CqWRLUkFuXIkeZDB15nuSKI9bUCeKYs2DiRI7njKSy8hfqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773455094; c=relaxed/simple;
	bh=tYMh8db3Yq3GD0vzDSVcZnMMxASZ0+Ed/qHw8Fa5hkg=;
	h=To:Subject:From:Message-Id:Date; b=pNPy2YI2/xkuGV/0d4CljlwxsxPu2u4ni8oSqwkQbGGaOCFvGin8EIEDSBRnU0VGcQqkgQpqZpD/9f/ig6f32OXqv3eE8uXMglHUFVwO1o86eyMKB0PH+iD6FwbNYdHoTPg7rUZHCoKalE35zWu12nLDLvIac4XQc/Bldw8Y/Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgX/cTCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgX/cTCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8017C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773455093;
	bh=tYMh8db3Yq3GD0vzDSVcZnMMxASZ0+Ed/qHw8Fa5hkg=;
	h=To:Subject:From:Date:From;
	b=RgX/cTCCOhpMHVw/qn7m+ga++Eog0N1SzbI2B+reD98uGIjdEkz00aVsv1eFv8NPQ
	 Lmo/JNq4wAofwvMBeTTkge7g25bnahFyorxRyFFYcuvi+a78bsV8i7oZjQMLryzm7Q
	 f/RPkVniefTpaAA5Ow2s2mQgkXOj/gp1u1r/tXK/UUyfbuePpBbKtmYZ2vpBV4k42t
	 xscMUz9jojT6fpH5MMTSqPulJ4y40qX2eeQIkb74Wuh4q1FasdnDC+qPWGO41YC585
	 eLC8C8hLnbD9zBw5C34x/SwfaKxI82lltXS+dMd1QRSHulffPVygoTtYSHQxsaudgC
	 C56W0XijzVOmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A6B107BCEF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345509358.4132.11089677835460392649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987f5162521f0a7734a468421fe34da836045c01b38ba25362c4576577dc7599
Date: Sat, 14 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773455093
