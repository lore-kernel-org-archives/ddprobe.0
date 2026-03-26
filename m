Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C69DDC3
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774565694; cv=none; b=i0ooV/v+l8NPv4b3ESf0nTqa6sy3WjbZjnJsypT7F8hGdain/gWqowUA1exCeo8vH0HgN7R+21d/RF+IgZgsyCMgr/3kOYqibpDMKpgmrt3QUvVOK2R0brGg5kTm95iauJtqoXN/U/UI1FBPzdtMcxiGS9NhEMdVghdb1DWH6IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774565694; c=relaxed/simple;
	bh=lLx1ZWdTxcgph37m90F+n7DK9bcl8RtpOOd5HZBD/XE=;
	h=To:Subject:From:Message-Id:Date; b=otQfgNtPH2bHBNcVbavE/wvNZb9NbVWb555cT81zMD/FY3a3Q/gzKroSYQvbxIs5cHZCSgNoWfB1biqUrIkJcWPqGAJDuj6jIn1bfcz97QqfobuW9oCGxRZVLj+7rLPMmXIjqbbpdE9dzoEAidF8m0YDqXB3CW6cLurNLsXfb0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMOqkjGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMOqkjGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA11C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774565693;
	bh=lLx1ZWdTxcgph37m90F+n7DK9bcl8RtpOOd5HZBD/XE=;
	h=To:Subject:From:Date:From;
	b=OMOqkjGM2u0xLvQF/zt5L/f+OBMVm7JwBCm7MYyXohPdAXJVnvlfQjXowC2hXTQAm
	 lc1Tk07xAIBNfiIbnGoyU4o0Tnx8voAI/QLIoVhw8FiyZTYXAZ0jYHPWqC4S8mb4q7
	 xqq5Qc8FcMrxyRpHRE6w8b3inheVwI+gUcF+0wpNNWBQs+KkrL4c7M9cxIsHAz/LXQ
	 iiLyBCzVLCIzk0Arnz/5eNDJvL790RfgmRpcoYZMuXtsqnRbCYxPAvu/Wz1QlNnwwM
	 JUHxE1OEPomFWFT7o6v7XuDrRPO7ero/RnQzESYUsh3dUgRNPFmkk02dqcB0dcZSgH
	 tUSrCvMEp0UZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9160410AB82A
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456569358.1781.802183756423138156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e27a914176c644cc284b838c64789190d8a004205a60d543b89bc560fe9feac
Date: Thu, 26 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774565693
