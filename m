Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229472309B3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736823954; cv=none; b=j2ItiGIW/qUpUjzeJoW+Ux+QGz3Vzeq/m/vTRet3cxTKP3mf0yZeIsf4Q+xAkLP5rvKFjn0YLO1s4nQeVogvQUd8KiCuyCCakybHaXMRG84HxM0BM5r+kzbAYg7UWIjYBZcDcvs/YZK0IW5yYvGGp1ldF6cggr3FaQ3MAIGXTxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736823954; c=relaxed/simple;
	bh=/5pGOzbQ4eHwBElVuxIPLDz3sJkP7ESGDDkJ/8UlLPg=;
	h=To:Subject:From:Message-Id:Date; b=Mn4sTuxaFG3KNaveSvkoDVQX0aVlLPNjeBKYFhH5JT8rt44MnrVLHRcQKfRa47ExRUgAI4/H9z1dnnFltqJZShHYyFr8o6n0Y+Lt3/oZhq/nlMMu2H9uvdEEhLicmYXM1Xn6+Z2941TQyppuaiXX0Qlh4jPRsUutt2SDWz60TBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGJblDh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGJblDh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72AAC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736823953;
	bh=/5pGOzbQ4eHwBElVuxIPLDz3sJkP7ESGDDkJ/8UlLPg=;
	h=To:Subject:From:Date:From;
	b=nGJblDh+j4cA/kEWxkd6f13+Yv7FTOeytEgOpeFd01XpKruzDi49XkKNtRZmNJA7d
	 sU90ncldMWbwM6SgsLhxQmCa5cXya3geTmzwMSYrcLkolB8Moy2N+vM5+3f5aGBi01
	 Fz9Cm0aCFYDbIddGKC+v3F1zIC7pnKqKF7P70MtWQ4ehhC15Twr8gVxVE28uWJtZ26
	 FpuB7m3VtfXLDDEgbaz50ywl0Q+3V9PbyRipR75Xn/Czn+B4Tm9sJZzhMFaKtOl8/e
	 SGd6+azHw1qyIftA8XmxSQo6E2EruGWqlll9qTgTnPLKk/jdGoyGiUsMw0y5oSW+b7
	 ZqtLaGHk3yTIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC4CC02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682395362.18038.11952719114057152865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664e422eab3c959d60f2a36ea49d4e38333d882dc044f677412cc69d289bd3ae
Date: Tue, 14 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736823953
