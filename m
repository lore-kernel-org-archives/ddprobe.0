Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22FE326954
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764774773; cv=none; b=JX6kbvMMK2stiLn7+4CcdGy07NaYiGl0N0za9s9E3NMjT2RmiSGjmXVwhhagaLfnY63/z6E7UNXC8YI1Dn6b7zQRa5nMLcEwBXKHlW3esobue/pQ1n8wU1oC7As1MebgTPRexBVB1UBt2EohDpf0Glsh9b7Fqw3B6vXT4xiO3kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764774773; c=relaxed/simple;
	bh=0UJeqQZSHHLDw6VY8ggxFhehWPl6Tsh/6k26iQUD8es=;
	h=To:Subject:From:Message-Id:Date; b=AtWfyDJqNhG6O/PBvHnRNt9UGhYExCE+2HLBg0LU8+yRZsOH904/zRjG+nzPX2Z+4SWlWswsL0LMLCwiFcHXF7Om9ACovrJ+BtCyW3OCkjdzKtF4ks128mtHfxCbwqMSKWqR/9qxjh5yAj2GSwLrZTS7ISqQswuVpDwZdJEGFKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpFggES8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpFggES8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A2AC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764774773;
	bh=0UJeqQZSHHLDw6VY8ggxFhehWPl6Tsh/6k26iQUD8es=;
	h=To:Subject:From:Date:From;
	b=HpFggES8XU/fIDhVAeTNpwG/YeBjBWmmKBiXFbGYuuil2NDvDo4dmaGd3x4nryzzE
	 nBasxWbN3jiOQ95+qZ3VxneSz9K1DzrT+26ptJbGq0yEKTCF1HMDdU2jGYCUUeZ2Fr
	 gXrbj6FMzGHxlgDwBb1v8Bdj4uvd47ab+timJykZIMsJBwJ9AftEua9Xl53WPdJwz/
	 rWaoyHCBpAqDWHXoxC3UflhrH7ilAWsKvZcm7FceVSiLNnBBd52EF9vbptqJTNbIF7
	 7nRGM4KNAHWXbzMwYmwxKlP6tGEjcmHotzrEy2KwXJ2PR0wvs/IEwEaU/VRz01UPmD
	 8QDX6gx+4GTNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91536D12D79
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477477358.2606.10313702971553824663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 211eef50af26d28a512027a5b93da3130e0edbd0db24e0ba63523e57159e577d
Date: Wed, 03 Dec 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764774773
