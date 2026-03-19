Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6313B38BC
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773920693; cv=none; b=MUexYdS6bDlbiEJrt8PGBJJrNh2mVaap8JG1bCkWR8NTlZj8VrGOzqjds3ppEBCqPkhBOP5Jw/Xv4+4HHkaohXmVJJpjQhIeNmzc4Sx8I09pTjBaKwKXtgOybWdgRFoH3YTDHptIxGXKTSNoCoZuKxc1OUW+DXkLAuOjuU55f1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773920693; c=relaxed/simple;
	bh=Aq+LiwBTfj4QyefKvKjuyQdtA+lWeHIipxS0Eghy6ew=;
	h=To:Subject:From:Message-Id:Date; b=ZS8ogaZzSLx6WzaiS3Ma+dSnkFwMKVoyw/ViodcIqA0dsgPvYKUMgzXm/JEN/jfMZNc3f//LOHE3xBTTEfyiSZWE8m0DW67OF37bK2GvVJ7ByCUObzFnbjBgwE/4I2IiryVa4Qd9zniQp/LL4cjXkZMNIoUa0Y0SyxitryYiPwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lhmjtx70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lhmjtx70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D872C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773920693;
	bh=Aq+LiwBTfj4QyefKvKjuyQdtA+lWeHIipxS0Eghy6ew=;
	h=To:Subject:From:Date:From;
	b=Lhmjtx70aS/gyVQoXa2SQAY4H4WQCskKskWnCAbLjgkiyVkENTDUJ7lhvq30hRbpn
	 +ApYjpLLR2WT9J2SQVsiTyqapzfrGjaZpf7rP59cHFQRzP/xet+6XC6DpZYhH2/xhY
	 yT3FIA2Zq9xV3CR7Z+S3PogiBolVNaXXTskCtKhYApqVTMsgEMN8DA8TkpoM3FEgWr
	 RYuY343LO2qwBHc+b56nFYt1wBoxmUyyMZ8YpIEZ+BCHPxADMGSzkgS/C7exmVlU+G
	 DH6a2t9aAJ7QPlM1M7df02qrxK6fuWM0kQkgVf/kX6r6QDcQJKPgSmxstL1q8MJ4HD
	 cbroWd9pABYSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F838108E1F7
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392069358.16386.12174377715835418591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a0bfd4dfba195a25a805c01de4b4295eae7d579c74686c19644dd99eff4da3
Date: Thu, 19 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773920693
