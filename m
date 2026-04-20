Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221C4296BCF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776670054; cv=none; b=L6zwILBm/0Yfklj7QRqk4IyX4QI8ByxyjRg9+65p02Wfkq0koOOoMhKOkGY4wsYP3RgwLL6JbQYQLJp/Mu5yQdTCLt4+PfeSZq98XxQzLLuvPa4y0eiT2rimErXi5AOnxLtrPhbtEz3nbBKh7U83nibZkbK9VSOtVACLpajMbCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776670054; c=relaxed/simple;
	bh=CDEBOT6mUwdnuOHziziR9xXo0EXQD0bTeCb7mxoR3rU=;
	h=To:Subject:From:Message-Id:Date; b=DJL1PWCd61MUH1CbSGwt4wQWzT9+5vsHJbZia7GKgip5lBsUCDjVHudxJQWrDnSxmvs2SYwxhO/jE2y00DNdIJ3H7tCb1RCa7lUvaPjAEr3kK0Rg5XcFGS1X1keF4YLpWxkuMcXtECdEatBCTOMk4DXUJtOv3xghUjt2U2+Dgm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fow0SyOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fow0SyOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB98C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776670053;
	bh=CDEBOT6mUwdnuOHziziR9xXo0EXQD0bTeCb7mxoR3rU=;
	h=To:Subject:From:Date:From;
	b=Fow0SyOOhz45uh6yK6u1944GoTgRyOF2dqgGmp4jLvNsbjSbtFOrQv4pcG1vmZ+lX
	 iT3ft0Ug9sP9X/GpGXLg4zl2AbtIcIFId/mamIfSh5dQNtbRJ1Set/N44YZQJLEK4s
	 DNEfk0kJQZl34/7bMOpkBLcwNKpAjhl9ra2Y0q/N4Rxa0eXn1d3l2p23EYn11sa6wy
	 tQUs+dZTxokiJBNIEmPom498g6oHyWXAvFX1wkwz719WHiwT83VdoBDOv0AMYJ0pAj
	 k9cehLAgQnHEiHayvDAAgzQqIxkUeRQiY4v0P1qkwPsdD5AuoYgedWt4WP7+Eklzl9
	 qxmEr3TosoNyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9771F36C3A
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667005368.20331.6970918930593367520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400777b59bbca02e8eca82b2ced7655a0ce04d5f25212e6c01692a90f6e44a21
Date: Mon, 20 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776670053
