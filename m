Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2311FC8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784357914; cv=none; b=CUZxJTmhc0FiSrLNhNJ+g+X85UFGFQ5NvMazyMfMjwgznUZwgFGDhTdcdrhb8k6K7fYhrOQwFFZW7mulu5PqWBSPwUFQWpw/Xf5wEeHbj08KquhVHpQNzX5mA9B9dw/PIBlW1J7inRxXbCy6B5rq1xylwA3Q3TJHPSFwmWBFiPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784357914; c=relaxed/simple;
	bh=OifLGutVwxfRq0urd3/L12QYA0/1s+erEWdSIFcJsLA=;
	h=To:Subject:From:Message-Id:Date; b=WCx/efNaz8Kp3hPRydnyubraOAcshrDlCGAhk7Cc7ejse9rbOykwyTzOpDaJ/DezYG8S2863dOED8ATzPMUnfqwGF67/zdNFlxh+UorlSJPWJD/TCse6q+HFJ14l/EoQuzb8YuA8k78+VCcYi0gPzRn40nKbmb6HPd+/RMoW3+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiNeyOlf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiNeyOlf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF675C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784357913;
	bh=OifLGutVwxfRq0urd3/L12QYA0/1s+erEWdSIFcJsLA=;
	h=To:Subject:From:Date:From;
	b=LiNeyOlfaNFB1S/eGfcR2Sj9gWN9nkQz2Bb7Vl79ocis3R8I/l2Vb2HBvdqbpl6oe
	 536qB97gT2cExAB9YErX9FOrWyRPWx+lFHmRA6VTA5s43CJR0VbukdF7b8bwnRJgOl
	 DjuEBTTtVh3/HV06t4Hk1cAW5CeVm9Ka2p8IOU9gw+grvDoeJb9Tr+6R4aIRZTOy31
	 OtfDukyYAYkqEHPMdOwLPuR+jI07F1EX7okDHGpbb6Pf3j4KRNz4/se5lLT7LmllIz
	 PG4YXviOCTMf5Jpsd2nkcGFXiEaVTng98d+X0AISgmjv868BpMXgir1399tizJoaSb
	 YY+qPnZhhduuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD6AC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435791367.15701.12367412635114371732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4838af02060646fb4d0f9f579995154b0709a28f9695186c4cb4564f502f60f8
Date: Sat, 18 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784357913
