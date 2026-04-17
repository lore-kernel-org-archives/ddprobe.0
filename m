Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A066169AD2
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776397654; cv=none; b=aySkYPQ0BZzMPwGjdwtjOoARwm8Piw2jKJy67oEHUufDuFTTRQaegXoyk8kitTCYoAdaPALbwqMIG4bN2Y8qpEPAAO7lVrw9snjYA4DLh9wt5CRop6W78q5WCWvYGd6TcWRbCouL6ccxtnud2zFKMFWtmWAjxeL5frVyFVimFjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776397654; c=relaxed/simple;
	bh=VlCh636ySkfhqgLs6Jakqz51nP8EnXMnyC6aLuUlhDE=;
	h=To:Subject:From:Message-Id:Date; b=eP1wjE3Au6SbvPE0ofpzZZ6V+UtHlJU9S6mrgn1rKCZwJGeYeb+JTIm3les0JSj7reft1PzVDLoSqbcyLnY9g2cQIoJP98Z3RpS4Lc2na+EUPQYra8k5J6N/pnKbC/+lmwBb46lQhkeJuJ2OLUzt2IKyrp89s0Ukv3zZmbu++Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLxWJuDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLxWJuDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0080C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776397653;
	bh=VlCh636ySkfhqgLs6Jakqz51nP8EnXMnyC6aLuUlhDE=;
	h=To:Subject:From:Date:From;
	b=NLxWJuDdY8a9cOW7EPjVUCY4vtg131uijgtu0J4r0Q2TVAT7INMy76dF1upo/WQWI
	 6VE3BGvXU3F2fNAEOLoezYMsstC4SlR1piF4E97+T99fwd0CR7rSy/KTNMh/QmqsBP
	 pPQ3MsDUFNJI0G82gdwzJyBxSwEMKwwIiRdVcN3kVDahC3SInKLlc2/e+AwQfHIZA5
	 zJSPLqkMT5G95eQ0Fi+zoANLQtO9mPNub7nSfiK3kuIxrAemgnzsF/5oCQPIdb3KYI
	 2g1lm0X0JD0sMVYqGHxmxJdBt8pvJoXA9GHve/xkNEhBSsFEUIVp/IJ64675H5u9Qk
	 L4IMJLzlMF/bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE56DF8E4A1
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639765368.32084.13303695314756600582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb797bb44542ba14f1b89970660bf4762792ac7d536b290703bbdb6561c7a0c
Date: Fri, 17 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776397653
