Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2416C1CAA6C
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762320594; cv=none; b=kQ248zXrlaRHFXhYinxZrVG1tIcO1mT6XiPmTrDGwupRSFiuDS6rimEZ3hcdjyKtvDTr+Ra/onYqhmyNnmshfoFz82e7FE2RZhcHlPTSSiGREEGw2XGHoVpOU3YZnt2pkvcxNzbp3Os04EOyWtAd1iu60JY3EGcynIrgVU4Qd9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762320594; c=relaxed/simple;
	bh=tQDRxAMp5Lc/1reZVry3FI/PU6UL43dFJ7tpOalms0A=;
	h=To:Subject:From:Message-Id:Date; b=IkMXMqtt3IwT3g+2nOYO9iBYuGkIXWFR4bJCo59d5SEmcE2yftd8q7h1AgaFpYlnOwalSNMgzicaCEjTWq12OvBtga5a2w2QquZxTOaObcENl8F2Sivt0uHs2VbElCWEHwGAiMpcflvb8NZlqG9SmRkxzkMtmqCbTvPGHVGHO+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrBt4+lw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrBt4+lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EADBC116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762320593;
	bh=tQDRxAMp5Lc/1reZVry3FI/PU6UL43dFJ7tpOalms0A=;
	h=To:Subject:From:Date:From;
	b=MrBt4+lwDK3WVLW2qMTiGYLGBz87OofgCufD+Z0s/sak40VTkc926gU9b8+SBBPhx
	 L1aJO1eqbu7TGnZ83qGYHXMrPBQbzaS/3O5Tc7bxt4GrNBYW1QePb/boJVaxQgDbKn
	 25KIT++SmEEvCFn3725E6CMt97G00fbyRQJVGz/iaEVLyYmXcPqv66w2e7FWdWCK+5
	 cnFAdwt/JpAZj4XXGeF/Gu64xfSBU9gOoBe4JhsuN4FXCZwIQmglBPlvaPsxh2s8TY
	 yoXdjI1K6rce2zcbC+WM8pRt/g0MpPHRw8GdA8lXkHhq7aIHaiubx8IMyyyBVhA+cV
	 KFHY42f/2bQoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F77CCCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232059357.6079.5351517636807664456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc003f4f3cd052af2afc787b1d896064c44ae4562c5ed995f10ffca6efe3e9ee
Date: Wed, 05 Nov 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762320593
