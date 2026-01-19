Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB1532AABF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768847634; cv=none; b=a46QWEYfD8T8FTfv6Smu19ire1NisLmgZ7WHewHAuBGAvDN85sUmPS4yrXqTF7Gepy5hVCgpFoqlzPlNiRs8xMRHUuKyU5rn8cqarZ14E4p8/+bPF/vWKdBdDc/NLxRRHDxKi9mSAXxiA6Rgc6bRFD23WcgCOvT7rpI1aA6YHnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768847634; c=relaxed/simple;
	bh=cwc4h6xVahSjwXiBJUxBi/H6mRkpNOT2qMJfmYmSzlA=;
	h=To:Subject:From:Message-Id:Date; b=GyTF7w72ZyT9m+Dcw74FuWL1pSVSF4KK3CzV5b4M4ciGCix0FXAJRi2YgllBZB6uDAR+Dl3bstVIzqq2dYMS02GaMtU0jq5Sx1q2yk4E+muD8RyxCMAZmPE0A2UKbD4dJVmWg5phCoxounwqz7QpffYKrzzASUOo/tRg2tir2Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V790f7sW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V790f7sW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B8AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768847633;
	bh=cwc4h6xVahSjwXiBJUxBi/H6mRkpNOT2qMJfmYmSzlA=;
	h=To:Subject:From:Date:From;
	b=V790f7sWc7hUkbcSgMMw07bHY3sby6or8RfY0+Dfa8NmKHK3XDypIsjATx0YJd9k1
	 FD9AnYFZmCFfWnXlBG7kHEbeiNLnuMnxeHclCOlV9cxMrZtzoXud3tu+lyHiDHuPUV
	 XBVMM2hg2GhxqJU1x8andzx0YLmai+0V5xzFFbDfU02j972tlb64u6+NcyAvgrMqPe
	 1JUdMEvaItDFLoD0X8+eOV1KtWSUSigpDuhDSzCzJhkUvSKf/5Wutyb7KjcLpsPw9U
	 4/iJw9lSjVCs/j1A5NtzhcQlRuFCnfE+zCq+AgORtEKB13LWFPEXQdL1wu/iKtf/bk
	 ZTax1Ol5zPuyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F6ED29C50
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884763358.5343.6812063591433709987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f4e446fec570861a4098ae57bc3dd43f71738a634c9e870f552d541a1b72a3
Date: Mon, 19 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768847633
