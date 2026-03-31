Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48EE3E8C4B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774967693; cv=none; b=gmzAktp8dZqtI7WDuGzwDbp3pxgsSPESlipktCdHQScT6fIiNdJK2yodZoIXYH3hohuOjt6wZONEqt13gBJdSlm04vhSX2f0w5guhWHJLohAfk5qze6l/54ZqxH3DtFBhssWF1d8KFojO3gqXg5RcyT1qUmbbOjutwdPZDBiIXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774967693; c=relaxed/simple;
	bh=D1WnHzD14+Rj/2BIO8Sv9wPTCYbmbUf0oAtsE9ZeAHE=;
	h=To:Subject:From:Message-Id:Date; b=onjGNR+Fjvl0pt2xOuQz/Ytfz39mWclH/l62BYEE5nCDT8O+SjRuWMAPudcRae5kMTViR4gPeIsLl63+7zBzcvq15a3UoUgSb4Ji7c0/fETQBVISsW2T6OpNfwAEqBapFIKT5gIHdKHkJ8D/UiWdRRMR9x+xwShlvYrn0CJ5Aw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvNJ+utf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvNJ+utf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B856DC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774967693;
	bh=D1WnHzD14+Rj/2BIO8Sv9wPTCYbmbUf0oAtsE9ZeAHE=;
	h=To:Subject:From:Date:From;
	b=uvNJ+utfI65iKViMWJRx0WLKVCxa56BZ08ZQs+iEkmxEMc7Ei2QFuMpn/1mSh9ko4
	 /ZxKfmH19U5DU1NBAJvFv62rp0LkseYDhxqv9/2YMWud1/qcCZOPXXEK/8toBE3X+e
	 vbFsSCfSChGnvTbZo4GqokZOi8fghoFp/ieAZHCBWO83oY9vTnKJsbw2FNftEbY6+S
	 W1xgZdmSBeg365GvE7pCCJECW+EMz95/dhHCXoMXW3RsZlMSzIH8otof0vbM5d9/mz
	 0x4PJvnIvamXs/Ir0fGANjtDHjCWLymEfMQ088Xag7xRXVk+HXha+7XwiHFThr+LTo
	 pMOCQlplQuVhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1AC9109B46F
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496769365.7049.4504672322262477309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d307eb766b0c657f16ce8a87361628f9a4d09db14e021a6694cb374d9305ccdd
Date: Tue, 31 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774967693
