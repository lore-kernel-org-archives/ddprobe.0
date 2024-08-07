Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF2C13F45F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723061754; cv=none; b=MhdnWyh+LyW/YEjAGhPRNGrGyEuFlmtLUPX+F0kyhoGvDfqmFLHclROYO+0/ap4UuBGjfhN1kk4isiAy+mFH4H3EH7HwjsMtP++eeLKgwHvxWkz7prP0lCn3JgbVE5GV2g30odHoAsHyMBxSqK+hi8Tu5u9p1fPrJB3RgWl4XMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723061754; c=relaxed/simple;
	bh=axoX+Q0JV6Nfi5NxAR5Fkr13jxqchktyw4QCZehS0z4=;
	h=To:Subject:From:Message-Id:Date; b=arxJbJOPDvoX5am/DXHHJ/9ixxqiyTVaFVp9GowMFG4I2tX0vPaX+XPnronqvW3v7+M0z/w3KcM8V+Tn44ZSoO2Tzuy4nBCHzTH8/0LsMt46wF0rUByIvHWys0jQygMcXxwUl9hoLY7p/pvs4Zozf697C4HUuKLcX+guPWZ1SkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TK+uCu48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TK+uCu48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70DEC4AF0E
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723061753;
	bh=axoX+Q0JV6Nfi5NxAR5Fkr13jxqchktyw4QCZehS0z4=;
	h=To:Subject:From:Date:From;
	b=TK+uCu48Z6AH+K3YHmF8N+Msf/pXfGj58Th0XLbYhSwiqM085y84Tv2Hh48vFHYR9
	 DuFBP0t6eIy+XzIDn2uuaQ6LBFVSQCIZzNMRfi3+0E4IX37lo8ki2F9KiwP9yse4XR
	 ZR7hUryoYTWVFQ1PF5t2RuhLGqtOPh/mHe7JPGQbJlNyN10+TaFwsrT2GxLiMfZH5Z
	 XiEkKzSbBoglNNzeGfcgj2E57BmbMhuLoGEGP5VQdOSeEiC0PIMH/35ZEY2pXWPPvu
	 uryDgcxyjOHTNkiEoT25/icq6yBaShmVC4wjt+NjHGHNAevKrLIxZtcbKhbWAAbWRZ
	 KrcsN/U8guqGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1EDCC52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172306175365.623.11763602833445689112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03a1c66cc22fbc044cf1cd80c0448f7750510d3f70d853bbaf624c51744ef88
Date: Wed, 07 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723061753
