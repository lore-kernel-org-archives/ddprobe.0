Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849FB29993D
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772891694; cv=none; b=BVHscd7nMCSgATG1TgEB5UUNWIlGzBlYKelJE0YjVjjFME7OFGRmsPQ3BrviFrJIngFRa9WmEDgQEp1dy6s78dOXAaMQw6Y4E3MIneFgVYW+AUMDcYjHcwO/YZU4/5dL/c0VEWID3Ht7Af3OgZ61K55l0KcMTX2xfdVgh0nA7WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772891694; c=relaxed/simple;
	bh=4Th441KZuw8UfzsuhqQM0EBcTf6ypereVoxwl4UVDak=;
	h=To:Subject:From:Message-Id:Date; b=IKlOOIa0bnc3xakONWycOsWHjSe6Y7sw7KDh89C8ECrUQ3TW/5FxCfYMaFqJGOUAJaK2HISt5jIum5vuxfCP4bLOieK+SBfv8LxfUYT2OrCj6RVTE/mjbHPKMC/ViSr8f55K2mFcsN6SBRGl5sB4JIb+EaDqPCdv/8uu3KXfFKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dl41YmAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dl41YmAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13EE2C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772891694;
	bh=4Th441KZuw8UfzsuhqQM0EBcTf6ypereVoxwl4UVDak=;
	h=To:Subject:From:Date:From;
	b=Dl41YmAF27/bX7cvdgAIUdVUaHz1h2zDMGAHSK9siVKgDnqBy9ssm6pa+fmQxE3sx
	 WK8SgD8THnKHWX56Tn6wpAvEcDyOE79pUKH74dDKjXlYiSyhl6FEehfPyHyzQnNbZD
	 1TvIFxfXH6Zsvi2YJghKIKdwWME78miM0qVIpunQhn+p0r8ZffYy44Z8SrtnouK7mT
	 ADg4DdDaOLQXtNyE703g4LqKX9wCnC0I09vzk+J2MqOMGxb+hn0vuOovpYdsp3ttwc
	 7HEd+b/tEUlT8emPp2P2YeItIyAxJaugGalL1n/EXgkbJyoYZO5DRDlEOXl9CS/JE2
	 G0g2mQgYamznA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A5DFC9EF8
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289169362.9367.14065972705046503843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e3c1c8a4ee17c557afb2d8f34331e51ff717b7f4552d7bf6378b55e056052d
Date: Sat, 07 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772891693
