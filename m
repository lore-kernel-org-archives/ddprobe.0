Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135E11DF26B
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765723374; cv=none; b=FOEI3KMTBrA6JKuU0PMl6Qi51ATgN53QLK+49KlDHMGWJhjQD7gW0z251AXCclqzLb3h3v3I3kz+YLNljybABHkJQaZV3iJv4/SipcKM+FK4xRRlsG+wa6rFvPbH++kxo2jYur06KpSb2OlwfmdN8eCxmH0htRabQVpWCJDwj3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765723374; c=relaxed/simple;
	bh=78twg2mLGKTIA/tnpQF0h/N75Tt6EV0jYp+AJ0lVyMY=;
	h=To:Subject:From:Message-Id:Date; b=IJ8fb9Z/JjRlR2IrVMi0ARECjVRZyQf30JCt+3lE1nNSa5ynfz04Qk5h6PyIIvs1BdmXQxd6hVwIhOteiQ/lhNs3l5Uyppv6cld81xocT7gpn6exX0KDpacXD+0Bgwd1M1JM1ZThhblUiUFmhCkOmr1KxjY4b3b/hZ+7m3Iirzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKuM69hC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKuM69hC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA75CC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765723373;
	bh=78twg2mLGKTIA/tnpQF0h/N75Tt6EV0jYp+AJ0lVyMY=;
	h=To:Subject:From:Date:From;
	b=fKuM69hCCpkBEPoFlRGXVbajiCL0PY7jQOVA7YbAAfSTMZiRD2UpZxM/8iK9LNB84
	 pFHaVSZ19TDDhcmGHZ4uooHcTnzHJzo84WzG7BrgIHVSTIeuXqiJz1pCwb6pclC2dc
	 lHdWSLHkwtoffrJmuPGh6DHujN8C78wSJOmvTRK0GA5WWjtXJmOJrP3vv6e2j+jSEj
	 32ohL81JC4fuz0ndV2kZtNHuiZlteazr3ttFhO0V14tM+b3BQb7tz5JZjua+VNms0p
	 m0KBp7YjmYv1vQaoeLz9qr/NFcSjPU2RBv36n5Wxn9pb/Nbr/JvnWyNWgRWxndUt+y
	 sm8BBSjhVa5Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99972D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572337362.16983.4071570292618428251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2b2a8fed9d59de188e4824f2dc78296dcc1efd0a81762800f01ed773a438bb
Date: Sun, 14 Dec 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765723373
