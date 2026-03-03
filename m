Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5953909B9
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772496294; cv=none; b=jSCfM/sOqLCsEfD3iLd2VsuLnFUcIdKcdzROcCS2o7DusEhsY9rU+laH8K7SoHr3a8T95ATRF0zs4akNhC/91NdIfEqEi2F62gj29sl17F+VgDx2Wele5gMgSJs/WzkR2Xk7p8e3axIJjgSkLjCXeNggOhqbqUKDjVHswi3XpFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772496294; c=relaxed/simple;
	bh=Ahku64alLjm98mfgbSExT8LBGGtIR4s8aNXYs2Cu46c=;
	h=To:Subject:From:Message-Id:Date; b=FmfVgMptK8lw4uSummAZPRsWyUlAU3mEoP2R904lX+QiRAA0Ufy7pDgVSbE+MIwno/CwMUfRcOUblIcjTm+qL3deQo3pKD+H4ueDqCBRIu4Mzm207IgvPXa467vE1wQDuAb+gGfVGLQkIWOlG0YuDj5jNM16TP6CPt0JUbSj3Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlstLfuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlstLfuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEA7C19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772496293;
	bh=Ahku64alLjm98mfgbSExT8LBGGtIR4s8aNXYs2Cu46c=;
	h=To:Subject:From:Date:From;
	b=VlstLfuYqdlr/y2MYS2+PvOnbL7Jqq6fU5dKUykBzsytep77j9YH3yt2nCSFqLA0e
	 5fOLAA8+8dt7eo1MfZWluYh5euftEqjmK51t7WDm01PbWy/aUnkKaEzDxTRJFy/5We
	 lCe/WT8fZzzeVqFoNgknXoO7vDxCP18CpwG/SNLevhRe/weg7/Lf2f9zqxoesB9yGR
	 kOC43hyOQVvaEi/kbVEcrutBPVG6GjUU3DQeIXT07XWA8s/J+fih2V0UilTxVv+JSy
	 s3SmSH0vnNVEGYoXMObI7wSWweVRoknyPPH0WxM/M1iDY4OURciVMAKliuM3Td1rwJ
	 VA3OPIui1YyKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C676CEB3644
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249629375.31746.12150683996100286880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc324953c67bf5021cc2108d6b8abcab7320cf112e63e0a70e12437bd8800685
Date: Tue, 03 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772496293
