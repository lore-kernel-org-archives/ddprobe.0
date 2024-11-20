Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B73A85C5E
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732117554; cv=none; b=dOVYY95FPhgvWy0Vd5coCHZl+rPmgaXmKq+LIZ7uz7AcKKx31Sbl8YKzqRRT8YUkSiALy4pyGRALzgrmR+WKqKFsQ2FfZz5rO3YZYOo6SFzOrJN44bnxP3EUkr/gqwdWPBdqAND/xMOgWjBtEpGIA/ic2E2hdMIrqrNJE6TFIFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732117554; c=relaxed/simple;
	bh=Oig31xrWrOQgr0eFhEuBbX/tEdrA9ZVI/CdznM8an78=;
	h=To:Subject:From:Message-Id:Date; b=cc3go8BqunIxsshGAeZQwcC2QtcgqjjZQdW87V3o6rU2fZZryAyVFKvKr3KphwtrEm2JQdz2n2IVZl1nUuC8CPELazprA4aN8mU0/WnWolSLBy/1PENqzx4SNMCKf9lS+v8zR3Ndw87XlX5Yj9IiXP109l99+60nuYRnjC/Y+Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZa+rpd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZa+rpd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A6EC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732117553;
	bh=Oig31xrWrOQgr0eFhEuBbX/tEdrA9ZVI/CdznM8an78=;
	h=To:Subject:From:Date:From;
	b=IZa+rpd7HA111sZ1AcTRylGeJxfhbR/pjryxuHCQRD8gWaqWyRbXgZu1OJVkvjcN7
	 gqBqDQ72iScuc56jHKTrSA1yK6pLVvlvOStZLBC925WC5LFvJ83gy0AchfXe2tAWoZ
	 JiO6HfMu6NWdxYx9ivxq3rvzs8oSS8idJuCIEEg1fuIq7wt/cx5JbMUp+r1QXuofvP
	 n86QhlfLuy5a8NdMgJ9IhKxvoxRebOJGOtivq3M8UF4INYGgch4Irn2jfk5+HC7Msr
	 rrZNZd1SjQKiwGG4XeWDXSL7Awo9nLrthZjoSDi4DKuvzSxhLIcDIisqLKoqBG5M50
	 P4nIcx4qdVISA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9591FD711BA
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173211755360.13851.10245672506331008987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0387805e6d07df18b0d617d153798208304d85b0c2585ed9aa72199676cfdd78
Date: Wed, 20 Nov 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732117553
