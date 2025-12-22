Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1051F4190
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766394834; cv=none; b=NZI3+eUzd/nJuNHOAT7FupAE80O3TyEZHUERtiljwZag+WVXQAzDQRwQtiYT4bCtp+DiTxYtADXUKtaaQPcZ/40MrI2ekRGOhVd8ODf8IXlKDiz3l4ipbnB2dnKIS2iIUfKJi9M8QMnPMcofOgJFhHyj4SmrmYk6vJPlfUAE0mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766394834; c=relaxed/simple;
	bh=dk5aOTcjUgCsNBLKAVyZWHXxfoY8DyiPnO0ErJQ1lhY=;
	h=To:Subject:From:Message-Id:Date; b=VyHJUQG7Wd6hr/myFgfYw/HUlw9L6DGu8vwcz990CkwCIQmuvdqyt4D4tX6yEJZ6y1Qq6EyjlhAlLh0DgbAjhevXcviDWvWsbK0rBhbxaKZPFBzYvM9jLQx3FACPOo7ygtF3n+Ktn9pdcVryAopYgZD2KP4RdVn46gemGRTQyhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWNsriDq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWNsriDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E62C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766394833;
	bh=dk5aOTcjUgCsNBLKAVyZWHXxfoY8DyiPnO0ErJQ1lhY=;
	h=To:Subject:From:Date:From;
	b=bWNsriDqrwW223lLs8NsSrvbSqGMTvWC0yMtYrkgID2kxbYLRXg+FoTrVhz0wmVJM
	 kCWYf8YZ1ui/b6XTs2PqGO7Vrn/7ECXqrm8CcC2KAP61it882pR+6L00hdaKxRYW7D
	 IFvqy+tGYcdyI/NaxqDjzZm0tzU6Umv749Prt5pZy+8giRF4Sq1jjb6RXxQ4lp5Qq/
	 yjxQK/EF/sKBGEgJsfi2TCc2SXdPujxgHFX5HxPFKqNlCUnk7PkGlxsXLu2n5tZtFG
	 d1PvbEYvBJGHVJoHUrl/BZ48Wnx3BxlGGw/A2MeP9X98XaPF09r9x5kIDd1606P7Zq
	 dUop/JJj/MGjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90124E6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639483358.4540.12920104117772276705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 457f54622a995643b6ab727e939bbd015f4ad364fa500053b9df43a9c0a00583
Date: Mon, 22 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766394833
