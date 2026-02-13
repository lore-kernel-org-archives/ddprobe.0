Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF9E21B9F5
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770952494; cv=none; b=sxjHJMfSCOe2v/RMzoCZFiP8/hV5cuwpSScrXE2gELx0a0+3jCkZ+wVgHD1jcyyMetJ+U7CKBSjyAFvaVdz2YDeHOHQpPJNibo2dC1odOaAkX61QlL59ljVwH6c7YsZoXLp1FoRgp5Zpq0nHM4GMm83azVuYY2dU5xv60a4DzRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770952494; c=relaxed/simple;
	bh=z0RyqgDxPsbqxvuxTxsi4oLpI1qZcaoZVKTCBt/6THE=;
	h=To:Subject:From:Message-Id:Date; b=d38KEDg6g0AyAnrQR8ivqkIgxMyJXq3kSSlZ7y492pUMNadvD552p3KIp0KPsEwCE8JfiWYliMIuFT5Bw8BRgTAgYK+TNE/jh/wIlnVSn3nmu2Bd7tZFvQaLF3Aj7ySM7DQHL1SpSe4wlX7DtMYy49Fsf2IkwHLWMX6WLEq3ayI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0RhzQUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0RhzQUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B533FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770952493;
	bh=z0RyqgDxPsbqxvuxTxsi4oLpI1qZcaoZVKTCBt/6THE=;
	h=To:Subject:From:Date:From;
	b=Q0RhzQUCBRU6afoIIhSQsieNojIPitG9lZqGm/Nt0b9YfHnFL46Rz6HhQh8NcMEZ7
	 t132jVfnHNN/U/5oAWzmJo8aerZwV5mMeXzBIP2r4XxjoSlM2s/wtjGbOtsSDaQuq1
	 hs7rrFqVRzvCy59exIlsSEfDQNHnnP1tS5ww8yelM/QRupISAcw8IPUUYr3TrnbTtO
	 HPTft8zNKgDGYGkb81nNuBaQk/VT8kfl/HEUepgvPA57xrqsspfROLKzXNaJAar+Im
	 6yTURwvDdqufIyqNGbgzL4LzcPWFKj/xCDSSif99fmlzj4UHpm7HsrvOxbG8ibPy0W
	 O60jwVeC72/JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF2CEF48C4
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095249363.17476.13739844280558421872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d9fdd8309903d87b759c656af594a67076f2d3297c894c4035c43eb34148bf3
Date: Fri, 13 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770952493
