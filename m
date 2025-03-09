Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA872DF68
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741512534; cv=none; b=LIhuQhnY9mRsKhd5nkickp0Td+rA5kB+i3Vtdy0W6kVZMpAF4DYEDwnZcyS9rqqUPTZJrNUYmjmHxtRRK8ZiEabcq/K2KUeKQfQXshRHj7FfQzBWMT68WaxfD1Qzcj/nAjbczCk2j/L0DZtTYgczZscfeqXQI3M5rnzk+D1N7pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741512534; c=relaxed/simple;
	bh=JtCVqQE7Ykj1+lwoDs+FB1INGEoi0wFBXkWu8hXN4Og=;
	h=To:Subject:From:Message-Id:Date; b=Q88Cwr/7VaH7/NjgFdwMmmMMUNwUt9hm+QXxgDvxq2omggPhk+BvzrPRKp9tFSxHHXlOCFFTjcmX+NhM9XpthIeQg2i5G01nMhgaQXva1Xw7P/bFctQ5PCSuOGHULozyHNHK1hqEyqd811zifUZDABNWLPaoMDi7JIxugNfcCtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WicXvHe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WicXvHe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F1AC4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741512533;
	bh=JtCVqQE7Ykj1+lwoDs+FB1INGEoi0wFBXkWu8hXN4Og=;
	h=To:Subject:From:Date:From;
	b=WicXvHe1s26+CKJ6JcTxUuoUJVOvRDw71riS1sBwZDHm++K+rnziCt1xNWGAEQt3X
	 v92JPz05FcZroOb5O3X2NsX7hwM3bQDxUUlZKvwYIpZ5tgfG670t4yt8EDenglHEXd
	 ZxhHt0SDyaq2+3sxoLFFtOBkLLeVwDJXABG8WAgpAKjDHlkSYCotthjYDuNMao0XkC
	 WumrAQ99nBm4iSgNTQ2TFE8hQ6PjlJrbyich1w/qhsxpk59f9uYtFTowRqTCYMzJly
	 TrrbCrOgH6EdjiOWG27P/mLK6ILml2VP1g+Q/6Zj0tGiJ/9QcMdZrbzmwcPuOAhZiC
	 8zE8Qpev4zLEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97556C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174151253360.8664.9162253659111326283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbdab3358f167a95a03caf5651eb5b49aac42694a0ba619ca02621a2b8baa5b4
Date: Sun, 09 Mar 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741512533
