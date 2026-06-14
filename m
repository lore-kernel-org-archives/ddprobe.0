Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551A927A10F
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781469394; cv=none; b=itiGHTcYXP0jeLSiecNiLHJ80AzLQ1UmZQrD0ewEjRwcmE2b1sm+AFPyngBbRSZVknDHqk32MKxJDP/Jn4dVx053zeSQ1DJFpwnbwqTiygBLHfXtbxDsPpSs4lSxhKiNQ7Nlz02aRbl4DSHkGe9lNgc41Q6sUsritsGngcCTHgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781469394; c=relaxed/simple;
	bh=7taNPBQVg2d/JnOmWGRZQFeNLa0SgMgm9uiIEJe3bQg=;
	h=To:Subject:From:Message-Id:Date; b=kU1SssDoG5VTTW0C9XMVBTno1UTGW+TyYRSi6gwr5ReVzJLEVja+XXt7pruDQ7ToMZ20hJhWnCfSmn7gtVuJcagTn3GeRCqOrU4zR0+0eurKJlFOEzFDnqc2RcANZ7om+w6tdH/g/cXLMTpoyHL8vKe5cwBbfBPegVrRi+Q/Tuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOzqIW3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOzqIW3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4639C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781469393;
	bh=7taNPBQVg2d/JnOmWGRZQFeNLa0SgMgm9uiIEJe3bQg=;
	h=To:Subject:From:Date:From;
	b=LOzqIW3LHXsNspXZn6fzh3BerBiHXteT7PdMPUfcAN4Zdgft4MljRhaGn5zoLZl2i
	 0A8uwUp4xKjwjkTOWxFqvb2xHycaIMMxvcYPLCGIicIrCMkQv45Tv/iDGkrAx/F+cR
	 JaixRgZR4/xfN6tqtMu+/Sf4/IdY9Wm4yzKa7ljoQtgg80iqMOf1xIw4E4Ouy0kCE6
	 uliCHSl+9HuU91PXPJrqYQsEq1E37qnpPmK1OUD2mm+Y2oMZv3OZzQ1dU1CFO/o5dE
	 jB6c2QP71iq3CxZkhJcQRQy5Ll6Io0Ue7MtvIWqAW9Y6QuQIRgWBVqKE4SS3CVxlgX
	 1lQLAPy2vfnSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B4BCD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146939369.1638.17990987347734730903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1dffffa0375d1497e0be1f0241b602cdc3613623ce148afd2badcbb3cb55217
Date: Sun, 14 Jun 2026 20:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781469393
