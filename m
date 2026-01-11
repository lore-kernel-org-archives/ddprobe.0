Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BC150097C
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768098834; cv=none; b=bDBm/6wOiFwjfJC9QHliEgBkR7r6NrFR3gQGHlLUGiTmD2zZJ3Zp/NpGHmi6Uu0YHKexQpLFqSb5ViNs8uAD7+c08IHVMd99nJKJ+9Yohf9NivB+yjC6C71vymaDJGbUU4HzqzP3c3LMwaCBmkfxYlOnB6uxA7fUDooDCAEt/gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768098834; c=relaxed/simple;
	bh=43UxUJkkSd0msVvJni0HZDlV3Tjq5/gE/kIWn8Rb2PM=;
	h=To:Subject:From:Message-Id:Date; b=CtArOrpJ2Nj7IOczodUZ3ZvIizZMppQfkOWHdk/Ms66SaUGNKBjYxSNoDt3oiD8I0qLo2cEDOzhSOdcotvoZrqyor2n5yaPLfVJLRBNqwVFLRkyvxP8fRg91uPH4T0pr9Xci1QYv5JKYrvbpqcJKYZNOX7AacCjUusFEFDpS3Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ox0SB+kN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ox0SB+kN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A798EC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768098833;
	bh=43UxUJkkSd0msVvJni0HZDlV3Tjq5/gE/kIWn8Rb2PM=;
	h=To:Subject:From:Date:From;
	b=Ox0SB+kN3FFt4a08LCz8GXtTNIX7JFOVZjoBNGCL09u7VkN0g3SAi5rWhcwqiLMff
	 0tnZDh/iD/OrcHVb2/VYwVElpQh09KJqjXgPzd1CJ2QOUs8fROjmGGBXmWQn4H/cSu
	 o8gve12qTcz42ezK3FunU/DjyFc+zprNKZSEScWXQ8czalKxnXr7fDNB6+i/QmE2Up
	 ZJyvVPfAJslcAoXYId6Dl8qaET3FUO4TOeAcR+H7jeq9lhridrsZ4m87/WDE97SYs1
	 n/Kmil5GmM77sV3RVUn0y/8eDHX/iG4AxT6FhBZzHYoOLrrR70kneantTW4HB/Bjhx
	 UBYSMIo1eOmQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C0FD2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809883357.22276.11321095225337865880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45489ee31116b3551fd839179b1a42d26cb367b0c3222c36df89f40a7cab822b
Date: Sun, 11 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768098833
