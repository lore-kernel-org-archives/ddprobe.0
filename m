Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DED213259
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751275793; cv=none; b=CBph8Uv1zzmeIQiz0n/o7Zb6xx4T2u1KTyGvNwidfEDeSURk7m0uVmcFTS9nUOcyBZG8TirxgUqVIPhUTG2t3rC7mGI0Er7i8g1SRw6WVQ/4Fwxz4ZhqZ9dZO17XBTsbfGfaa3jxgV8EWV7fXdeYDLVo/YFyD97vvjMtM6J2EcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751275793; c=relaxed/simple;
	bh=3xiOd+o0wwd001h3mhthhqxzFWidq+6p9qTVV7dYX00=;
	h=To:Subject:From:Message-Id:Date; b=HrRDd5H//IlnOxzFR25zOWR/QxS5bFcz/MRtWxmoT8jF7WnERcMMxpcIfRyDRq1CW+8hcAY0hfFikjWCSaJYWcC3OfQ6iQjCjDVBN+Ie/H2/SUqcKjV77A189Krt7w23aYn6qCvd11K1kDZ71fl0ZQMlvkCaP3SJtyh9uMDQ7/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGZ+4tMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGZ+4tMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E744C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751275793;
	bh=3xiOd+o0wwd001h3mhthhqxzFWidq+6p9qTVV7dYX00=;
	h=To:Subject:From:Date:From;
	b=XGZ+4tMB78Vu072e6L8N+IUhiLGy2IPpvU7lfn3Cla41hqwfYH9PUGLiv1xotB+Q1
	 A0PrVwhh5Mixk+kZiKoiYoNNdpEITv24fNSSE6DpLy+69wCcYYW/AnslzBSZCbyCpo
	 sz87RqPA77bL3DY3v2/ZgbbeZ1d6Ss4jYqjsfZ+NpvScMid4RYPhZvrskvO2iXKMkx
	 VoXqhDsXX3tHzQK6RcdAWJ2Exph8j1Z3hUgaAUbDZvdHXhav4hC8L9R/HvoHFPOWyp
	 oXOJ47WsQCm2qLt7zu8krLwoHnUSOrao83dOkpyRVWRFm9aTA9LYvtF/Ac0CwWlDM6
	 cJk2qBMwPPbbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3DC7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127579358.16389.41429651402822369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97b5a226e27f99f359011c4e680e75f2b3831674c8b0b2dd8cd302a8e3ad459
Date: Mon, 30 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751275793
