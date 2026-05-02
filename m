Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C9513D51E
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777717054; cv=none; b=hpOgmng0ov8/UIv5Gl3/5MXt+HjN1lPpfXOi5ogwq0ALWwnfaRY/tdnBbW0bT5nUQkBhw8Sp+oy2EEHrr66CQB3NjpbAJ9mIPzFsb6LdkShwr/3XMT1Yt/iw4m4V3LYzlx6yCQLpenkJTSdDjvhUyJPy0wsZ7YA6iqeL9TQrAW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777717054; c=relaxed/simple;
	bh=iDnlDMYG8ilews1Q3cgCdWCDLP400LCPL9TSHOL0XNo=;
	h=To:Subject:From:Message-Id:Date; b=BGhc+5mNeRs+eKjbpL81nTdduBBNZVcTVvtgb5ut+0wHtNKtoJJQnpiLIoGV5eqfwCg5WeFPibj00qL4iYyGeQiKfSJ4ODJwuL3YwQ42yOmHxOxxu5La2y9QO8DTvQf6Q+zd2ivJvrUBumZdVG0J6zl0K6Znh+kdGh0qSa5cHq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWVGxOYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWVGxOYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBFCC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777717053;
	bh=iDnlDMYG8ilews1Q3cgCdWCDLP400LCPL9TSHOL0XNo=;
	h=To:Subject:From:Date:From;
	b=kWVGxOYhdZdIlkWEBwhfDhPXoOg0wP04CDu3so/1MgiJGQyCmVI6u2OWHdL6k6cJv
	 3uNgfRExmhwn0MQGjbkMOal+9/fFBoDvxa3kxRC5U5dsemLBts94ih7pm2QL423N5m
	 NRv7MyPCkIzTxJlO6x5Cb68ON5KwGV3vAvuJWWybh0VfeGAM06gv2NOCrLHEtYRsuO
	 0ryhTdOCNTq0qtNlK60HNdBp/mjBGUZaLe7r5BRmIhfxR5nwenN+0pfmB6znvvYlz3
	 gt7m8WQK/8kqjbQnVTSWvGa/ROnwTC9cByOfbGRW8nWnNcJDCJargJXSNcBfR+BjWf
	 3LOhFdo8iR0Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0C4CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771705368.17057.5415593663826776475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28415253407c11b41565e77326d1d2cad1eca2e599a89ea94ea19f6036349471
Date: Sat, 02 May 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777717053
