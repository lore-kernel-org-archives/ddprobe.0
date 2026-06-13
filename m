Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B0C31D5CE0
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781374594; cv=none; b=Ji5nGaBEMNTIEWUPTIS0REupJL2wC3wJqM7thTpawV9spquCHRkY2JI7ljNKfFd6hTEOPOCaXtYsZ8KkPDDuLq1Ckb+Ys+Obhv7Cm305jA1FDRTzpu3BQn7eVK2RkxhU30wdLSr95t0/s+H3KoSXBkPJEKfL/CNU/KuvsGCe3b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781374594; c=relaxed/simple;
	bh=SaoinzLJEZWkplXlVCp+DnZXAaezTzxRZGEFTHVlj5M=;
	h=To:Subject:From:Message-Id:Date; b=kz292CyzGvNGz382VBQhJcZZRxKfpBJxh7k1zPcojbSj/eAMDPp5xcdtjpixgWburA8F4D2rSMxv/UOamZctNiHzYJwvqW8Je4Zt6DTj5Tu8wvX4emI9QBl6/jqlHJPAj2u8eBgQ+sBgH3oVj1UzW5oBdnn+xxV/GdmS5h0fMUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZi8YHup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZi8YHup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C140EC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781374593;
	bh=SaoinzLJEZWkplXlVCp+DnZXAaezTzxRZGEFTHVlj5M=;
	h=To:Subject:From:Date:From;
	b=IZi8YHupYvpjv+UtvLlJE3AdHEO09WePKC0M67bBHn/vCQ6/fqKtIRcCJTaUhgP9p
	 FDBlDzy2HZNKqsBm7M/aTg5LiCbag0wzqJL4E8PT0TJLZkUtR7S0cfYQzAG0samlGq
	 2Y9GFKrEoBYVqA7Q/II6FHpygP2ty+0LW4MFSwvlI8KhjOoO3oPm+3/Fri5Zg6u8pc
	 Buotz6rA87Ou9n8RF4LugN8b5oSWPCOXpVYP0VdqUaZUP1fhllKovwdyG2fxi6MqjN
	 idCsD0TZS00QxPK0yzjbA91dXrAn9axKQZChqucc4xOpyX1NOqLE9LSzveoR8D2EkC
	 nMLbbum2h6LqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84D0CD98D8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137459368.4216.15565129752493905110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a03c9a789888802ea488ccba0a3312092e0b47ad60a84483341cfe1d87b2e7
Date: Sat, 13 Jun 2026 18:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781374593
