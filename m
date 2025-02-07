Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B3B1EB190
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 15:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738940754; cv=none; b=URnsJtLUBofTYR1cNJ49YxnIBwgYXuGqB7bD4E87vUqeDqctRc5IUgnc6roHYppoiYokJEpcdaPFoFUx2sd4wdRrUne2RxkJgZB9FVGWbbGwRspf/wMClHtmkyxfpBntMk11HXZkqPCHxEJScwNJHxCofWeCMBDiqI2KXxuggg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738940754; c=relaxed/simple;
	bh=P6+K5EFmgB/0ynj116aqBMywsIuS9EEp/e9vYqyEOE4=;
	h=To:Subject:From:Message-Id:Date; b=AQunH2hSH53RGlzu7mLwxZ9WodqKGNgGOGjLLSpl1TUTZfgC9kfEUAM3YRzCcadI4bceYvEvwggXV3Xzl5vtwTcdNlw35L2XgF2WVmUTpvZ9FT4EqDVLNKCmv9xSR5Uu4CXzVEs8dYkdplnkDf6/JxLq8vxSHv9mprv3nKFyvbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JB07DuAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JB07DuAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFADFC4CEDF
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738940754;
	bh=P6+K5EFmgB/0ynj116aqBMywsIuS9EEp/e9vYqyEOE4=;
	h=To:Subject:From:Date:From;
	b=JB07DuAFSyeEMRKskIvl6Yh6f9LRhM1eCWoyGrpagpEtndgSw2E4p72Xmmy9O4DPT
	 WOkea4wwse10kJq2w4Mob4BL8RD9JqtXkWMxMPAx/nPgCN/Tq6jE7rMbqNmL0cZEwU
	 7kK4eMzj+t5flwtKQLXXK0ZukwHDorp6GerV02wndfrRWhK/vJ2W4GE9TIW7GnZxcn
	 +X05J35Yjwl+aD/4Gt703y5V2GTG7J+kyAUMSNjT2XFccPi5ipDckeAGYP4vkld16O
	 zmTBg88Y4aDfUKBe9qUDmj3ko2kW9uFeyC4xcwqW8d9d82gmOB5psvfyXi6gr3DmiL
	 vW8C6DHbDCybQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC71C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173894075374.22335.12818902728681703722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4521b80264d97772a15225e3b6e1d67082b8e124d15520eff02265a7bdf59486
Date: Fri, 07 Feb 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738940753
