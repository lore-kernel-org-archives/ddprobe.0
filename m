Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF6926A1C4
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770872694; cv=none; b=t84soiqnifURiTu08sWg9UCcm7sQzGOGEf0g+xEpJ1jKCkKlRWCr3CvTkITmtM82MoXDQq+fYu25h21w7rMAsKTXpm4grmr8GZKA5rCq44bzdfZxzblR5uaQkRTSQ7L/AByI6z6sdk3GPgBZDXyk3Xgpp2nwfqfTHlfOWqGxj3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770872694; c=relaxed/simple;
	bh=RAfStvh6LevzcqlP5iStpgAyPnlLyvuC0dAj1QRKT4k=;
	h=To:Subject:From:Message-Id:Date; b=gAQxNcbQXVZaJp/Vz13tXbT2hTX9Pw+tVKK9ZXQT12SyZprsN2xCDY0lmcJt+3zHGR/L6lRN9+/UVZ+PlPF+VsU1vvP21tlHgk2orZrxkLY2Fdft/XIidqO9KC0P0UfRD/8v7gvoNWKAKOXqnNVeMUExpDO29pR++8Ej1o/+abs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4nhiZn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4nhiZn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E85C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770872693;
	bh=RAfStvh6LevzcqlP5iStpgAyPnlLyvuC0dAj1QRKT4k=;
	h=To:Subject:From:Date:From;
	b=l4nhiZn7PVe03Md/Z6s9U/d5XvnzoVlVyTRK+E9+f6p2SJB/KQ+KO2HzE6XHGjudF
	 IgGi9LuVjESaKuq2NX2r/PBsJTUkXwHpvT0zXut7SsSygr3iUjLQaDfFAtfcpDljE/
	 H89e+4dPplu4P2q5ErlEXFiYKYFfTP1hnqGDhHbR3OPs+439NOFawijUKGD1iywBwX
	 bOzJCT9B3uhB13MFXHQI2u5FBTMuxgpjWASxSn6jeNRqzmhzcMCYmXdLEaJWoeslxL
	 IkxC3+28TvzoC5MVJkfHnjzMjxuooIaOwDxOUAgXrX1B0lf46wbn5itFKPwJE92nn9
	 NMMHAAT/SH4Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3E2EDF039
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087269363.1728.15357217077495849024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6798780fa40f3d0487721cdc13bbfb16334378728ab29fb1c0043f586be29c97
Date: Thu, 12 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770872693
