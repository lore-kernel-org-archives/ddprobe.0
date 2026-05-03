Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A451ACEDE
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777838854; cv=none; b=lTy/EgqTgNW/lmzaI6/21Yqz77AcRMCQWwOkrcHVFs2DXY9DR5xPOzFGqAwnSLcdahw2EOaey+1fV1joLvnAt4mUbm2ba4APvpopy0Hhtsbe4L4S/9b+pigHaPYIhbKBitoIYtiVEjNt9CoEqbXaqvVYcb02EvFOLV8QUl3NWTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777838854; c=relaxed/simple;
	bh=/bXNRkGqWKIphyjdQUYPv0pNzMfzFgCeYyCNPA5h0Lw=;
	h=To:Subject:From:Message-Id:Date; b=kg09PlWhxM8EsfcoAvJWFgUt6gGXln/gQTcuBinS4coyRyPurVf070IsK/VxY8eB2SguL5tAnZf+LQSbkfFiY6j1vYVdhFyX/i1VYjubbGckmxY7Fd87j+uxCp3w7z84toUPERmDXOhKJiYqXqb//w2yyQcfS5YRd4+LILYIa8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byQMU1r6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byQMU1r6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C37C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777838853;
	bh=/bXNRkGqWKIphyjdQUYPv0pNzMfzFgCeYyCNPA5h0Lw=;
	h=To:Subject:From:Date:From;
	b=byQMU1r6SXW7yJwTEnZxbdvZT2p1sO9lL2RG2xJSLvNSpFC1E6qPtXk/A2UDWKXKK
	 XfGZIHpoKOR5csiz+T6Wg+/UrTr2zHOz6H8Yz37e4yuI3RkptaVGppZPC2r0gEdOl2
	 fWHbWXZLXi0Hj6Tv5OvdvFUMuxkabK43INVTfHMRT7xsvKdVBkoFuOllWS1jghigyC
	 B2GHWtP0FCvxRf3R4RinuM0xKIMQmFYD0TLoJgRc2vuNXHmhYA4C44HiRnw51I8Byl
	 +Oc+a1buWiIyoT6Q/NiqCfMyoRiLA3y5eTPmJXP5af11PcGt23unDpUUXv3p8Rua2M
	 4Wy76oUw6P5ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BC7CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783885368.25680.533355541159654943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf34dd7c01a4cbe436f4290f5110a439ae19c56da1090022d83173b3d869f55a
Date: Sun, 03 May 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777838853
