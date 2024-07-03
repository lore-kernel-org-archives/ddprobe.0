Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697F010E3
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719970523; cv=none; b=NjdnGz2YT+G6saiiYJYHg4yJ2cWEbaPb3rR5/zn26bS5gp+Yc0Qxb8Xanfte9FezYgbpnckae82mhqRu4hfAEOz66d2eg6Hs+ohxyahoZmuOCWDRDO0ftEQlm83c2wO9jYgJXRhzugrFAuoW15mvEcPkZWXpZuPFNUFbsI8K3HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719970523; c=relaxed/simple;
	bh=4v3TzBSdLRlTAWD7MKt+Y2AALQeCMeWW+Sqww93VqjI=;
	h=To:Subject:From:Message-Id:Date; b=DSSvxSE10BZcOEJLYvW5pPDchTX2LmYBFzR06i4TWV7IpByq+iHvaz7ihaFtmz0TJrgnS8jVz5QJJRXBq7L93hIYD50GCpZRAzFcq8A0ygwaEiQtWXgMZLIVyWOsw+LiIlUsJFbc1E1xyHoCsFyhpY/UQa5+jU7DwhwOiyn/FUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHSbZ+bq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHSbZ+bq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0CF4C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719970522;
	bh=4v3TzBSdLRlTAWD7MKt+Y2AALQeCMeWW+Sqww93VqjI=;
	h=To:Subject:From:Date:From;
	b=iHSbZ+bqTcON26Xg+pceFHRVf6cTxvgeQ1XvMqHop9YRrFrvpVaYPaTph2KSOt+u9
	 5kYODLYNMSV18MHT3Ut9NFcRE/+KABgxbeoGxyPyJKXUobcY2yhIcQzSM2YVbxPsqt
	 BcdDnkfFWHL89HWJiZfNDY31tDAuwDp4xABguQhNExfWzgav5c3VI2ks2+j7m7j72X
	 JaCW6C+i/JSryWv36I7G0CFGw0q+m8a25ZCLKL9iOh1MXGzWQHI2MICRlmDpHNadzc
	 3JZ8I5Do8JEabqoxRGpOvCDaGAoyhgbTxg3wdVW4M37TOzlBUsIrK8CMLHR+d/FVVp
	 lRJ6oQBkoDl1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD761C30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171997052283.31408.6160873585374423504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3082b5ed08f5339c39f600cacda7acf40021b41ad519cad89580cb1490002b93
Date: Wed, 03 Jul 2024 01:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719970522
