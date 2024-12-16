Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD471FFC60
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734342354; cv=none; b=jmWBWZzyVBrB94Pr2OXhEoCpNP3Yem/hs1/8r4Ugq2iX0l/V9Amu9otsTxWr2HiRzMkBYvDf3axlbV7T+ZI2StkJWfC80gZt08Dyh1hOr8lURGcnjUOIBuZSxo5CUfIxsEYCUHsXd6hYgGHp5t6vrlRFZO66CrJ1l/e87e0ea7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734342354; c=relaxed/simple;
	bh=RC9gCjGtrR4V+d3GF/2tThEWqxPHiwgTsd0lQgIAJQg=;
	h=To:Subject:From:Message-Id:Date; b=OXStMM1rzIEtxv0tJbKJYHqZgSulz/8tla/lYrz8UrqBRpVWJcep4VsIDEzk1ULlRmhBv2HIaxrILgycv55MLEHVU2V8KD1IjpHG2cID0NQqziKDys2l+CLWZ3KWcu1SKkVSGtgZ3x7rWtuBsCSDBq0dkRpFFimyUyS5UCxmo9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDRaeM39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDRaeM39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0FFC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734342353;
	bh=RC9gCjGtrR4V+d3GF/2tThEWqxPHiwgTsd0lQgIAJQg=;
	h=To:Subject:From:Date:From;
	b=SDRaeM39CplLo1HfwwtMeXsLtdxlJg3adYzClzt73EBG1hjDt5bz+8Uw6f18h49Ta
	 PNa9/PmnCuy0vF+L+jCkJk9LejPLHSuBVGze9D8TrZlmmaaFVQAJrebfkoCF4OE5Xv
	 xnkQM4n3jnw0OJJfIUmM/Fd/XH/t3DWB6yJH+g2Yc0bJYvG9g38Y1z0eBrPnbCnOE+
	 57Xy9lsV6rYGhEt5LHFzhtq2fMQICqaCy3+imMXOm0enR8fZbuzkAVdF36ZYJJTXR7
	 YPaM0XWvt1vACJaEXuzokXH6c0SDcVc4CP2s4zYTcP1cbLB4s7mDjinzjSsvElfPJm
	 ns9QUquoR4xYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950BDE77180
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173434235360.16308.15904032672223509478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a366b71300ec8153cf10312c0df9f13e08675b08797a121aa46302e71518553a
Date: Mon, 16 Dec 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734342353
