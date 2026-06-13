Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F692FC898
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781318794; cv=none; b=SnKhOd58dSc0lqnxBrUZwdlxuYUvjJ3+sWLpep1tTWfirD2doUDW5RKx3gLSC5bbn93g/jCxo/US3N2oZoKnibdP4QTSH1XejJvhOXlES3mFWAjgVQK5HDG4aQV+hlrInucrlcxmsZxcrGKP6nrVENkY29MalL7ySHfeNA8khZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781318794; c=relaxed/simple;
	bh=B9mQK8l5Bg2s7bph022tZyLaBhMxR8L5kHfvEvn0oN0=;
	h=To:Subject:From:Message-Id:Date; b=CGkRMlXis1WPxu4Kh5v0cKQLsnB7+WmWeMuz8aCYqu1Jbv5RvclaNqI7KUx8h7gYU4GLLFzijCEJ86Tt0BrcYaLTUzvPCA3uTEKOl3+k1BDtYWr/edn2ST9jdINFbwZvYy165k62aKKhqgGsN12MtQCnwWiLkrVxS9VZyLWs4lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxwpjY77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxwpjY77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76E6C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781318793;
	bh=B9mQK8l5Bg2s7bph022tZyLaBhMxR8L5kHfvEvn0oN0=;
	h=To:Subject:From:Date:From;
	b=CxwpjY77gQPFcfePsX4tEOJKH91Z3aOy6UjsNfEvQP4eiloGsBLsAW2mCmEDB/Pxq
	 aLr12ry88q062eumSnOJ67R8y9qqiiOOfMqP92gmlRR3HIY44kzzuqYxHkISV5nmo7
	 efXeKXH9rBkvSRQcadHTTVvPO4shv7msyLW3XiMW/jDWd5kewhT0XbnNkkdgRhgMyz
	 9k1TaEkXgKCDZ9qzGGiJqbabzJe3o8Fk+ZK9h8gGgUi8Xbfx5S/2SkDfnjgEw8uyY1
	 MoipozTWtgYDxvqLSGw5KxPokOCVPG6TAbqeg+vJHHcmxsoRtcNq+97LfHdCo6c968
	 uxfQcrVmXABpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADC8CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131879368.16098.5556288414742395598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6328adab14111bd13ec4e2e8521aa66ca900d9f9e3956ab1fb89fee006167b48
Date: Sat, 13 Jun 2026 02:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781318793
