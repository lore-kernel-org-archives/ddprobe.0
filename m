Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB6A15E5BB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762054794; cv=none; b=p2rs/u4gy+P1caW6+OARrqqLWT2VswNnd8VGgOPabKhSldwLhK/eJlUZjNuQVL82S5hc+fYL8LQKUd+lRlhZ7UAzLpv+ir8zKIVPvk9Easm5o/yMCCOnf2I1taGHweVy09RoZwm15j+6SxzXHOgSnbmUN9fBQz7y7xvuU8yXE9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762054794; c=relaxed/simple;
	bh=VfUQnFJah/kkDClqicOaDBsHwVCHdACBdR5yGMrYH+0=;
	h=To:Subject:From:Message-Id:Date; b=CvorDsmMNBTRe4NITj+iAYLV3ZzuCDZbeFscg3mqsp836CIs1DRXbfSOirPfMHxqJxN1tFxmp0Zz6xmYa23PRmdOb5N4Lai+ZmRm3XneF9rBOZ8s1hY6iJdy3RJ5qOCc92bbqffyhBg8o6aJaGkGl8mZBIlnuQf24mt7H3OzI3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gm9LnGBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gm9LnGBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE582C4CEFD
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762054793;
	bh=VfUQnFJah/kkDClqicOaDBsHwVCHdACBdR5yGMrYH+0=;
	h=To:Subject:From:Date:From;
	b=Gm9LnGBBa92SmklJ9ShDzLwm9lF6X5ouKUw0F6pHl+jMLZuRdWzrmzFuC17qSAddx
	 9HfwxLPNcyi55d0Px/Th1ulRMko/PMiqCcQKxT0EZFyVwfy87NfdZ0kcB6/DxCCvHj
	 LCGQU/PJ4y5Cl5CUM5gziNvNDPIYVrEHlbTwsIMn1qjP7Rn+ICGStlT1tr9gclbYo+
	 9fryVNyICn3eYS82G/imUQSUn+8trq59LQcs4eV5oI69BmyblxhdD1IqGL/HWeh1T2
	 wiXoyD95I2ZvxsYrxMpXk8K2NKLDRLd1TK7rb4kDBF3j3JTDFyhEb664OJGeGw+y4P
	 Z4F0V6gApnQ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B15DCCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205479359.2829.5500728403061419369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84394a4475ac5d3ecf3d199c4539a1bbf0e5964dae5661b5454cedec78f4cb86
Date: Sun, 02 Nov 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762054793
