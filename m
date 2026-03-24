Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47D5390215
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774356893; cv=none; b=p4tWtegP48PfIeYvR4i8yWkivm+L2tfx9BXfQ+JnJP6bXsVImbwErNwrs/kAEhFlJeoKIPaH7j3ngwRBMbdxa2X8/D6NDM//eB/JOrEXKjFyU2Ihl1aTdcV2k74IkpdAklDLKq6I6d2rR3vbeCS36Xm6bWvL6a+6aY4RgLZHnDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774356893; c=relaxed/simple;
	bh=YtgS2nWvnK7YVd/szrSr1U3qK3CjpuhEs1LBfM6XkeE=;
	h=To:Subject:From:Message-Id:Date; b=X7QG70L0AKiaxjG4zWcYGw0MX+aFXnQZUTgNySwcFuQVTM4BKxQ9jsQK6IPWoaeGtsQl2erLge5lRkDPs8e20oDi/wsKQSLXbtrzcXPki8Z3sooKHxG0Uq7lIK4fPYYL9K2Hbd5G0y1Nw5Xq5brc0yuA6TcWuxNUCqNJEf0jId8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMHIalgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMHIalgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0358C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774356893;
	bh=YtgS2nWvnK7YVd/szrSr1U3qK3CjpuhEs1LBfM6XkeE=;
	h=To:Subject:From:Date:From;
	b=hMHIalgVxdyPa/oFO7D2RtaYIG7dUKbaV1GzcugTOchtudsD9AJxBNpfIX/CoCuQH
	 kzfJ5vH0kXlUi24UbSfrYpIzwwyFO2roUQhEowT80by5KIiN/GcCUy2gw2exniEVVl
	 7wpNAaltvMUVq3EBa8/2JjeyjxSjtXJeETWejP8OlO3yZqwiHiNnNmLc/HhBmXeJaa
	 8L8ESmvIVVp6QDzkveRL4UQBkX0XQPtH/Qlre/kiA59Xs3F/bgIzkMD3qo3IC742Fi
	 8PXud2APDs7EsVgWksdyZwZmI8wba9jvo5Uqu6mM07UWTpMTwqoKwjwV74LwSnVIWO
	 h9QOI6P+uRecA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9075DE9A779
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435689358.13771.14339544486894791900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ed39f3815bc4e34540cb10bfb74eeadb1afc1b6f05f2b69f25417e50ee3c21
Date: Tue, 24 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774356893
