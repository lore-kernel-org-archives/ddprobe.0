Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B52E18D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721712354; cv=none; b=q4AX2H2Cfoo4ABZRYa1s5+8/5HkboIQHllskuLDCjsNUJPYElsabppB0jO8S+Mb0qXYtB0GBlBA9jvgZTxVjEDFbZ0/W7Oab4I/2kpenSI3yYRKU1614lm2VLKUZx4h/Fev9iWqFNXt4yJSnoH5XJamF4nzMgc5FbEWstbpbwMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721712354; c=relaxed/simple;
	bh=PXANcxc166sIN1PLprNe/xE72XkiE6M1L+NsW/CZPVE=;
	h=To:Subject:From:Message-Id:Date; b=OFuDrr9WwDbUP9h2iMGAmnzEPyVceyeypZwzQzZpm8BoK5qarFr1Bvd8OVApZJ3rLAzJ7FZyOZGYhqoo4yViO+ajVSGFN9FKyRBl/YhbukA1kgTem0hBbwgUIQT/mDHSwKgKlhSRlu9ZU8MS41Va17RzelJhg+TfCl9Yu7xPBZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u86DOZgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u86DOZgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D4FC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721712353;
	bh=PXANcxc166sIN1PLprNe/xE72XkiE6M1L+NsW/CZPVE=;
	h=To:Subject:From:Date:From;
	b=u86DOZgPumtD4+nfK83E+zC5z0efqQ/QWC4xHohUSi2Yux/QrZpkZCcPOWSCsRJtz
	 KWrHVlaIhJPat7vDWc1uhFQsbw1WnPsex9yY/xuTvPPXmEXHa+qOSK+YdXc6WijzJO
	 oVESw2Eac9eEYYkcOw4mbZ5IoqnEDnmkSLUiIv4fOtLKk/a+gIxA1xOtgAy+Z2VU6G
	 41iQwYW21zdW2ztArMFuByZulPFWTW+pMx7hSopcfuJgQu/qRAMKmLWJjt8yhqhDfC
	 HKBsBfcnWzHaU71Meqre+oI5CQrFGqVRus0i2IY8tciVBYGoesxAcDFwgbvrD15gfS
	 tNsj/BgFG/RGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D46C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172171235359.17230.6401709976117620910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897331989baed0841c51fdb3005c978174ff125159d6537dc45644924fcc6160
Date: Tue, 23 Jul 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721712353
